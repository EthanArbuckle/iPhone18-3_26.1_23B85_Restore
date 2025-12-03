@interface NSFileManager
- (BOOL)_anyPathExists:(id)exists;
- (BOOL)_migratePaths:(id)paths to:(id)to error:(id *)error;
- (BOOL)_moveItemAtPath:(id)path toTempDir:(id)dir;
- (BOOL)_perform:(id)_perform times:(unint64_t)times error:(id *)error;
- (BOOL)_removeAllPaths:(id)paths error:(id *)error;
- (BOOL)_tryMovingThenRemovingItemAtPath:(id)path error:(id *)error;
- (BOOL)mb_markAsPurgeableItemAtPath:(id)path error:(id *)error;
- (BOOL)mb_migrateIfNeededFromSource:(id)source sourceSubPaths:(id)paths toDestination:(id)destination destinationSubPaths:(id)subPaths error:(id *)error;
- (BOOL)mb_moveAsideAndMarkPurgeableDBFilesAtPath:(id)path error:(id *)error;
- (BOOL)mb_moveToTmpDirThenRemoveItemAtPath:(id)path error:(id *)error;
- (BOOL)mb_savePlistAtPath:(id)path addingItems:(id)items removing:(id)removing error:(id *)error;
- (id)_pathsRootedAt:(id)at subpaths:(id)subpaths;
- (id)mb_moveAsideItemAtPath:(id)path error:(id *)error;
@end

@implementation NSFileManager

- (BOOL)mb_moveToTmpDirThenRemoveItemAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    __assert_rtn("[NSFileManager(MobileBackup) mb_moveToTmpDirThenRemoveItemAtPath:error:]", "NSFileManager+MobileBackup.m", 24, "path");
  }

  v7 = pathCopy;
  if ([(NSFileManager *)self fileExistsAtPath:pathCopy])
  {
    v13 = 0;
    v8 = [(NSFileManager *)self _tryMovingThenRemovingItemAtPath:v7 error:&v13];
    v9 = v13;
    v10 = v9;
    if (error && !v8)
    {
      v11 = v9;
      v8 = 0;
      *error = v10;
    }
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=mbfm= rm: Nothing at %{public}@ to remove", buf, 0xCu);
      _MBLog();
    }

    v8 = 1;
  }

  return v8;
}

- (BOOL)_tryMovingThenRemovingItemAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    __assert_rtn("[NSFileManager(MobileBackup) _tryMovingThenRemovingItemAtPath:error:]", "NSFileManager+MobileBackup.m", 40, "path");
  }

  if (!error)
  {
    __assert_rtn("[NSFileManager(MobileBackup) _tryMovingThenRemovingItemAtPath:error:]", "NSFileManager+MobileBackup.m", 41, "error");
  }

  v7 = pathCopy;
  v8 = [MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:pathCopy identifiedBy:@"move-aside-cleanup" error:error];
  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "=mbfm= rm: Created move-aside temp dir: %@", buf, 0xCu);
      _MBLog();
    }

    if ([(NSFileManager *)self _moveItemAtPath:v7 toTempDir:v8])
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        path = [v8 path];
        *buf = 138543362;
        v25 = path;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=mbfm= rm: Removing temporary cleanup dir %{public}@", buf, 0xCu);

        path2 = [v8 path];
        _MBLog();
      }

      v12 = [v8 disposeWithError:error];
    }

    else
    {
      *error = [MBError posixErrorWithPath:v7 format:@"Unable to move to temporary cleanup dir"];
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        path3 = [v8 path];
        v15 = *error;
        *buf = 138543874;
        v25 = v7;
        v26 = 2114;
        v27 = path3;
        v28 = 2112;
        v29 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=mbfm= rm: Unable to move %{public}@ to temporary cleanup dir %{public}@: %@", buf, 0x20u);

        path4 = [v8 path];
        v23 = *error;
        _MBLog();
      }

      [v8 dispose];
      v12 = 0;
    }
  }

  else
  {
    if ([MBError errnoForError:*error]== 2)
    {
      goto LABEL_11;
    }

    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *error;
      *buf = 138543618;
      v25 = v7;
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=mbfm= rm: Unable to create temporary cleanup dir, removing %{public}@ in place: %{public}@", buf, 0x16u);
      v22 = *error;
      _MBLog();
    }

    v12 = [(NSFileManager *)self removeItemAtPath:v7 error:error];
    if ((v12 & 1) != 0 || [(NSFileManager *)self fileExistsAtPath:v7])
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v25 = v7;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=mbfm= rm: Removed %{public}@ in place", buf, 0xCu);
        _MBLog();
      }
    }

    else
    {
LABEL_11:
      v12 = 1;
    }
  }

  return v12;
}

- (BOOL)_moveItemAtPath:(id)path toTempDir:(id)dir
{
  pathCopy = path;
  dirCopy = dir;
  makeTemporaryFilePath = [dirCopy makeTemporaryFilePath];
  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  fileSystemRepresentation2 = [makeTemporaryFilePath fileSystemRepresentation];
  rename(fileSystemRepresentation, fileSystemRepresentation2, v10);
  if (v11)
  {
    if (*__error() != 2)
    {
      v15 = 0;
      goto LABEL_10;
    }

    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      path = [dirCopy path];
      *buf = 138543618;
      v19 = pathCopy;
      v20 = 2114;
      v21 = path;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=mbfm= rm: Nothing at %{public}@ to move to temporary cleanup dir %{public}@", buf, 0x16u);

LABEL_7:
      path2 = [dirCopy path];
      _MBLog();
    }
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      path3 = [dirCopy path];
      *buf = 138543618;
      v19 = pathCopy;
      v20 = 2114;
      v21 = path3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=mbfm= rm: moved item at %{public}@ to temp cleanup dir %{public}@", buf, 0x16u);

      goto LABEL_7;
    }
  }

  v15 = 1;
LABEL_10:

  return v15;
}

- (id)mb_moveAsideItemAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    __assert_rtn("[NSFileManager(MobileBackup) mb_moveAsideItemAtPath:error:]", "NSFileManager+MobileBackup.m", 96, "path");
  }

  v7 = pathCopy;
  pathExtension = [pathCopy pathExtension];
  stringByDeletingPathExtension = [v7 stringByDeletingPathExtension];
  v10 = [stringByDeletingPathExtension stringByAppendingString:@"_"];
  v11 = +[NSDate now];
  iso8601String = [v11 iso8601String];
  v13 = [v10 stringByAppendingString:iso8601String];
  v14 = [v13 stringByAppendingPathExtension:pathExtension];

  v21 = 0;
  LOBYTE(v10) = [(NSFileManager *)self moveItemAtPath:v7 toPath:v14 error:&v21];
  v15 = v21;
  v16 = MBGetDefaultLog();
  v17 = v16;
  if (v10)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v23 = v7;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "=mbfm= ma: Moved aside %{public}@ to %{public}@", buf, 0x16u);
      _MBLog();
    }

    v18 = v14;
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v23 = v7;
      v24 = 2114;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=mbfm= ma: Unable to move aside %{public}@ to %{public}@: %@", buf, 0x20u);
      _MBLog();
    }

    if (error)
    {
      v19 = v15;
      v18 = 0;
      *error = v15;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (BOOL)mb_markAsPurgeableItemAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  v11 = 73733;
  v6 = fsctl([pathCopy fileSystemRepresentation], 0xC0084A44uLL, &v11, 0);
  if (v6)
  {
    v7 = [MBError errorWithErrno:*__error() path:pathCopy format:@"Failed to mark item purgeable"];
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v13 = pathCopy;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=mbfm= =purge= Failed to mark %{public}@ as purgeable: %@", buf, 0x16u);
      _MBLog();
    }

    if (error)
    {
      v9 = v7;
      *error = v7;
    }
  }

  else
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v13 = pathCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=mbfm= =purge= Marked %{public}@ as purgeable", buf, 0xCu);
      _MBLog();
    }
  }

  return v6 == 0;
}

- (BOOL)mb_moveAsideAndMarkPurgeableDBFilesAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    __assert_rtn("[NSFileManager(MobileBackup) mb_moveAsideAndMarkPurgeableDBFilesAtPath:error:]", "NSFileManager+MobileBackup.m", 131, "dbPath");
  }

  v7 = pathCopy;
  if ([(NSFileManager *)self fileExistsAtPath:pathCopy])
  {
    v8 = MBSQLiteJournalSuffixes();
    v9 = [v8 setByAddingObject:&stru_1003C3430];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      v30 = v7;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [v7 stringByAppendingString:{*(*(&v33 + 1) + 8 * v13), v28, v29}];
        if ([(NSFileManager *)self fileExistsAtPath:v14])
        {
          v15 = [(NSFileManager *)self mb_moveAsideItemAtPath:v14 error:error];
          if (!v15)
          {
            v23 = MBGetDefaultLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v38 = v14;
              v39 = 2112;
              v40 = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=mbfm= Failed to move aside DB file %@: %@", buf, 0x16u);
              _MBLog();
            }

            v24 = 0;
            v25 = 0;
            v19 = 0;
            if (error)
            {
LABEL_26:
              *error = v24;
              v25 = v15;
              v19 = v24;
            }

LABEL_28:

            v22 = 0;
            goto LABEL_29;
          }

          errorCopy = error;
          v32 = 0;
          selfCopy = self;
          v18 = [(NSFileManager *)self mb_markAsPurgeableItemAtPath:v15 error:&v32];
          v19 = v32;
          v20 = MBGetDefaultLog();
          v21 = v20;
          if ((v18 & 1) == 0)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v38 = v15;
              v39 = 2112;
              v40 = v19;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=mbfm= Failed to mark DB %@ as purgeable: %@", buf, 0x16u);
              _MBLog();
            }

            if (errorCopy)
            {
              error = errorCopy;
              v26 = v19;
              v24 = v19;
              v7 = v30;
              goto LABEL_26;
            }

            v25 = v15;
            v7 = v30;
            goto LABEL_28;
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v38 = v14;
            v39 = 2112;
            v40 = v15;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=mbfm= Moved aside DB file %@ to %@", buf, 0x16u);
            v28 = v14;
            v29 = v15;
            _MBLog();
          }

          error = errorCopy;
          v7 = v30;
          self = selfCopy;
        }

        if (v11 == ++v13)
        {
          v11 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v11)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    v22 = 1;
LABEL_29:
  }

  else
  {
    v22 = 1;
  }

  return v22;
}

- (BOOL)mb_migrateIfNeededFromSource:(id)source sourceSubPaths:(id)paths toDestination:(id)destination destinationSubPaths:(id)subPaths error:(id *)error
{
  sourceCopy = source;
  pathsCopy = paths;
  destinationCopy = destination;
  subPathsCopy = subPaths;
  if (([sourceCopy isAbsolutePath] & 1) == 0)
  {
    __assert_rtn("[NSFileManager(MobileBackup) mb_migrateIfNeededFromSource:sourceSubPaths:toDestination:destinationSubPaths:error:]", "NSFileManager+MobileBackup.m", 165, "sourceDirectory.isAbsolutePath");
  }

  if (([destinationCopy isAbsolutePath] & 1) == 0)
  {
    __assert_rtn("[NSFileManager(MobileBackup) mb_migrateIfNeededFromSource:sourceSubPaths:toDestination:destinationSubPaths:error:]", "NSFileManager+MobileBackup.m", 166, "destinationDirectory.isAbsolutePath");
  }

  v16 = [pathsCopy count];
  if (v16 != [subPathsCopy count])
  {
    __assert_rtn("[NSFileManager(MobileBackup) mb_migrateIfNeededFromSource:sourceSubPaths:toDestination:destinationSubPaths:error:]", "NSFileManager+MobileBackup.m", 167, "sourceSubPaths.count == destinationSubPaths.count");
  }

  errorCopy = error;
  v17 = [(NSFileManager *)self _pathsRootedAt:sourceCopy subpaths:pathsCopy];
  v18 = [(NSFileManager *)self _anyPathExists:v17];
  v19 = [(NSFileManager *)self _pathsRootedAt:destinationCopy subpaths:subPathsCopy];
  v20 = [(NSFileManager *)self _anyPathExists:v19];
  v21 = MBGetDefaultLog();
  v22 = v21;
  if (!v20)
  {
    v25 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v25)
      {
        v26 = [subPathsCopy componentsJoinedByString:{@", "}];
        *buf = 138543874;
        v33 = v26;
        v34 = 2114;
        v35 = sourceCopy;
        v36 = 2114;
        v37 = destinationCopy;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=mbfm= mg: Migrating (%{public}@) from %{public}@ to %{public}@", buf, 0x20u);

        v30 = [subPathsCopy componentsJoinedByString:{@", "}];
        _MBLog();
      }

      v24 = [(NSFileManager *)self _migratePaths:v17 to:v19 error:errorCopy];
      goto LABEL_13;
    }

    if (v25)
    {
      *buf = 138543618;
      v33 = sourceCopy;
      v34 = 2114;
      v35 = destinationCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=mbfm= mg: Nothing to migrate from %{public}@ to %{public}@", buf, 0x16u);
      goto LABEL_18;
    }

LABEL_19:

    v27 = 1;
    goto LABEL_20;
  }

  if (!v18)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v33 = sourceCopy;
      v34 = 2114;
      v35 = destinationCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "=mbfm= mg: Nothing to migrate from %{public}@, already present in %{public}@", buf, 0x16u);
LABEL_18:
      _MBLog();
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [pathsCopy componentsJoinedByString:{@", "}];
    *buf = 138543874;
    v33 = v23;
    v34 = 2114;
    v35 = sourceCopy;
    v36 = 2114;
    v37 = destinationCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=mbfm= mg: Cleaning up un-migrated (%{public}@) from %{public}@, already present in %{public}@", buf, 0x20u);

    v29 = [pathsCopy componentsJoinedByString:{@", "}];
    _MBLog();
  }

  v24 = [(NSFileManager *)self _removeAllPaths:v17 error:errorCopy];
LABEL_13:
  v27 = v24;
LABEL_20:

  return v27;
}

- (id)_pathsRootedAt:(id)at subpaths:(id)subpaths
{
  atCopy = at;
  subpathsCopy = subpaths;
  if (!atCopy)
  {
    __assert_rtn("[NSFileManager(MobileBackup) _pathsRootedAt:subpaths:]", "NSFileManager+MobileBackup.m", 198, "parentDirectory");
  }

  v7 = subpathsCopy;
  if (!subpathsCopy)
  {
    __assert_rtn("[NSFileManager(MobileBackup) _pathsRootedAt:subpaths:]", "NSFileManager+MobileBackup.m", 199, "subpaths");
  }

  v8 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [atCopy stringByAppendingPathComponent:{*(*(&v16 + 1) + 8 * i), v16}];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (BOOL)_anyPathExists:(id)exists
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  existsCopy = exists;
  v5 = [existsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(existsCopy);
        }

        if ([(NSFileManager *)self fileExistsAtPath:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [existsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)_removeAllPaths:(id)paths error:(id *)error
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10026634C;
  v7[3] = &unk_1003C2960;
  selfCopy = self;
  pathsCopy = paths;
  v5 = pathsCopy;
  LOBYTE(error) = -[NSFileManager _perform:times:error:](selfCopy, "_perform:times:error:", v7, [v5 count], error);

  return error;
}

- (BOOL)_migratePaths:(id)paths to:(id)to error:(id *)error
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10026647C;
  v10[3] = &unk_1003C2988;
  selfCopy = self;
  pathsCopy = paths;
  toCopy = to;
  v7 = toCopy;
  v8 = pathsCopy;
  LOBYTE(error) = -[NSFileManager _perform:times:error:](selfCopy, "_perform:times:error:", v10, [v8 count], error);

  return error;
}

- (BOOL)_perform:(id)_perform times:(unint64_t)times error:(id *)error
{
  _performCopy = _perform;
  if (times)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v14 = 0;
      v10 = _performCopy[2](_performCopy, v8, &v14);
      v11 = v14;
      if ((v10 & 1) == 0 && [MBError codeForNSError:v11]!= 4)
      {
        if (!v9)
        {
          v9 = +[NSMutableArray array];
        }

        [v9 addObject:v11];
      }

      ++v8;
    }

    while (times != v8);
    v12 = v9 == 0;
    if (error && v9)
    {
      [MBError errorWithErrors:v9];
      *error = v12 = 0;
    }
  }

  else
  {
    v9 = 0;
    v12 = 1;
  }

  return v12;
}

- (BOOL)mb_savePlistAtPath:(id)path addingItems:(id)items removing:(id)removing error:(id *)error
{
  pathCopy = path;
  itemsCopy = items;
  removingCopy = removing;
  v13 = [NSMutableDictionary dictionaryWithContentsOfFile:pathCopy];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = +[NSMutableDictionary dictionary];
  }

  v16 = v15;

  if (itemsCopy)
  {
    [v16 addEntriesFromDictionary:itemsCopy];
  }

  if (removingCopy)
  {
    [v16 removeObjectsForKeys:removingCopy];
  }

  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = pathCopy;
    v26 = 2112;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "=mbfm= Updating plist at %@ to %@", buf, 0x16u);
    _MBLog();
  }

  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  v19 = [(NSFileManager *)self createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:error];

  if (v19)
  {
    v20 = [NSPropertyListSerialization dataWithPropertyList:v16 format:200 options:0 error:error];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 writeToFile:pathCopy options:268435457 error:error];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end