@interface MBErrorInjectorDrive
+ (id)keysFromDictionary:(id)a3 toIndex:(unint64_t)a4;
+ (id)subdictionary:(id)a3 toIndex:(unint64_t)a4;
+ (id)subdictionary:(id)a3 withKeys:(id)a4;
+ (unint64_t)subcountForOperation:(id)a3;
- (BOOL)copyItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)createDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)done;
- (BOOL)downloadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)moveItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)removeItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)uploadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (MBErrorInjectorDrive)initWithScript:(id)a3 delegate:(id)a4 index:(unint64_t)a5 subindex:(unint64_t)a6;
- (id)contentsOfDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (unint64_t)nextIndex;
- (unint64_t)nextSubindex;
- (unint64_t)subcount;
@end

@implementation MBErrorInjectorDrive

+ (unint64_t)subcountForOperation:(id)a3
{
  v5 = a3;
  v6 = [v5 type];
  if (v6 > 6)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"MBErrorInjectorDrive.m" lineNumber:38 description:{@"Unexpected operation type: %d", objc_msgSend(v5, "type")}];

    v7 = 0;
  }

  else
  {
    v7 = 1;
    if (((1 << v6) & 0x43) == 0)
    {
      if (((1 << v6) & 0xC) != 0)
      {
        v7 = 2 * [v5 count];
        if (v7 <= 1)
        {
          v7 = 1;
        }
      }

      else
      {
        v8 = [v5 count];
        if (v8 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v8;
        }
      }
    }
  }

  v10 = v7;

  return v10;
}

+ (id)keysFromDictionary:(id)a3 toIndex:(unint64_t)a4
{
  v7 = a3;
  if ([v7 count] <= a4)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"MBErrorInjectorDrive.m" lineNumber:44 description:@"Index out of range"];
  }

  v8 = [v7 allKeys];
  v9 = [v8 sortedArrayUsingSelector:"compare:"];

  v10 = [v9 subarrayWithRange:{0, a4}];

  return v10;
}

+ (id)subdictionary:(id)a3 withKeys:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [v5 objectForKeyedSubscript:{v13, v16}];
        [v7 setObject:v14 forKeyedSubscript:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)subdictionary:(id)a3 toIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [MBErrorInjectorDrive keysFromDictionary:v5 toIndex:a4];
  v7 = [MBErrorInjectorDrive subdictionary:v5 withKeys:v6];

  return v7;
}

- (MBErrorInjectorDrive)initWithScript:(id)a3 delegate:(id)a4 index:(unint64_t)a5 subindex:(unint64_t)a6
{
  v12 = a3;
  v13 = a4;
  v19.receiver = self;
  v19.super_class = MBErrorInjectorDrive;
  v14 = [(MBErrorInjectorDrive *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_script, a3);
    objc_storeStrong(&v15->_delegate, a4);
    v15->_index = a5;
    if ([(MBErrorInjectorDrive *)v15 count]<= a5)
    {
      v17 = +[NSAssertionHandler currentHandler];
      [v17 handleFailureInMethod:a2 object:v15 file:@"MBErrorInjectorDrive.m" lineNumber:69 description:@"Index out of range"];
    }

    v15->_subindex = a6;
    if ([(MBErrorInjectorDrive *)v15 subcount]<= a6)
    {
      v18 = +[NSAssertionHandler currentHandler];
      [v18 handleFailureInMethod:a2 object:v15 file:@"MBErrorInjectorDrive.m" lineNumber:72 description:@"Subindex out of range"];
    }
  }

  return v15;
}

- (BOOL)done
{
  v3 = [(MBErrorInjectorDrive *)self index];
  if (v3 != [(MBErrorInjectorDrive *)self count]- 1)
  {
    return 0;
  }

  v4 = [(MBErrorInjectorDrive *)self subindex];
  return v4 == [(MBErrorInjectorDrive *)self subcount]- 1;
}

- (unint64_t)nextIndex
{
  v3 = [(MBErrorInjectorDrive *)self subindex];
  v4 = [(MBErrorInjectorDrive *)self subcount]- 1;
  result = [(MBErrorInjectorDrive *)self index];
  if (v3 == v4)
  {
    ++result;
  }

  return result;
}

- (unint64_t)nextSubindex
{
  v3 = [(MBErrorInjectorDrive *)self subindex];
  if (v3 == [(MBErrorInjectorDrive *)self subcount]- 1)
  {
    return 0;
  }

  else
  {
    return [(MBErrorInjectorDrive *)self subindex]+ 1;
  }
}

- (unint64_t)subcount
{
  v2 = [(MBDriveScript *)self->_script operationAtIndex:self->_index];
  v3 = [MBErrorInjectorDrive subcountForOperation:v2];

  return v3;
}

- (BOOL)createDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    if (a5)
    {
      [MBError errorWithCode:100 format:@"Simulated I/O error"];
      *a5 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [(MBDrive *)self->_delegate createDirectoryAtPath:v8 options:v9 error:a5];
  }

  return v10;
}

- (id)contentsOfDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    if (a5)
    {
      [MBError errorWithCode:100 format:@"Simulated I/O error"];
      *a5 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [(MBDrive *)self->_delegate contentsOfDirectoryAtPath:v8 options:v9 error:a5];
  }

  return v10;
}

- (BOOL)copyItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    if (a6)
    {
      [MBError errorWithCode:100 format:@"Simulated I/O error"];
      *a6 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [(MBDrive *)self->_delegate copyItemAtPath:v10 toPath:v11 options:v12 error:a6];
  }

  return v13;
}

- (BOOL)uploadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    subindex = self->_subindex;
    if (subindex >= 2 * [v11 count])
    {
      v25 = +[NSAssertionHandler currentHandler];
      [v25 handleFailureInMethod:a2 object:self file:@"MBErrorInjectorDrive.m" lineNumber:126 description:@"Subindex out of range"];
    }

    v14 = [v11 allKeys];
    v15 = [v14 sortedArrayUsingSelector:"compare:"];

    v16 = [v15 subarrayWithRange:{0, self->_subindex >> 1}];
    v17 = [MBErrorInjectorDrive subdictionary:v11 withKeys:v16];
    v18 = self->_subindex;
    if (v18)
    {
      [v15 objectAtIndexedSubscript:v18 >> 1];
      v19 = v26 = a5;
      v20 = [v11 objectForKeyedSubscript:v19];
      v21 = [v20 stringByAppendingPathExtension:kMBUploadFileExtension];

      [v17 setObject:v21 forKeyedSubscript:v19];
      a5 = v26;
    }

    v22 = [(MBDrive *)self->_delegate uploadFilesAtPaths:v17 options:v12 results:a5 error:a6];
    if (a6 && v22)
    {
      *a6 = [MBError errorWithCode:100 format:@"Simulated I/O error"];
    }

    v23 = 0;
  }

  else
  {
    v23 = [(MBDrive *)self->_delegate uploadFilesAtPaths:v11 options:v12 results:a5 error:a6];
  }

  return v23;
}

- (BOOL)downloadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    subindex = self->_subindex;
    if (subindex >= [v11 count])
    {
      v18 = +[NSAssertionHandler currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"MBErrorInjectorDrive.m" lineNumber:154 description:@"Subindex out of range"];
    }

    v14 = [MBErrorInjectorDrive subdictionary:v11 toIndex:self->_subindex];
    v15 = [(MBDrive *)self->_delegate uploadFilesAtPaths:v14 options:v12 results:a5 error:a6];
    if (a6 && v15)
    {
      *a6 = [MBError errorWithCode:100 format:@"Simulated I/O error"];
    }

    v16 = 0;
  }

  else
  {
    v16 = [(MBDrive *)self->_delegate uploadFilesAtPaths:v11 options:v12 results:a5 error:a6];
  }

  return v16;
}

- (BOOL)moveItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    subindex = self->_subindex;
    if (subindex >= [v11 count])
    {
      v18 = +[NSAssertionHandler currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"MBErrorInjectorDrive.m" lineNumber:173 description:@"Subindex out of range"];
    }

    v14 = [MBErrorInjectorDrive subdictionary:v11 toIndex:self->_subindex];
    v15 = [(MBDrive *)self->_delegate moveItemsAtPaths:v14 options:v12 results:a5 error:a6];
    if (a6 && v15)
    {
      *a6 = [MBError errorWithCode:100 format:@"Simulated I/O error"];
    }

    v16 = 0;
  }

  else
  {
    v16 = [(MBDrive *)self->_delegate moveItemsAtPaths:v11 options:v12 results:a5 error:a6];
  }

  return v16;
}

- (BOOL)removeItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [(MBDriveScript *)self->_script index];
    index = self->_index;
    subindex = self->_subindex;
    *buf = 138413058;
    v29 = v11;
    v30 = 2048;
    v31 = v14;
    v32 = 2048;
    v33 = index;
    v34 = 2048;
    v35 = subindex;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[MBErrorInjectorDrive remoteItemsAtPath:%@]: %lu %lu %lu", buf, 0x2Au);
    v17 = [(MBDriveScript *)self->_script index];
    v26 = self->_index;
    v27 = self->_subindex;
    v24 = v11;
    v25 = v17;
    _MBLog();
  }

  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    if ([v11 count])
    {
      v18 = self->_subindex;
      if (v18 >= [v11 count])
      {
        v23 = +[NSAssertionHandler currentHandler];
        [v23 handleFailureInMethod:a2 object:self file:@"MBErrorInjectorDrive.m" lineNumber:194 description:@"Subindex out of range"];
      }

      v19 = [v11 subarrayWithRange:{0, self->_subindex, v24, v25, v26, v27}];
      v20 = [(MBDrive *)self->_delegate removeItemsAtPaths:v19 options:v12 results:a5 error:a6];
      if (a6 && v20)
      {
        *a6 = [MBError errorWithCode:100 format:@"Simulated I/O error"];
      }

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = [(MBDrive *)self->_delegate removeItemsAtPaths:v11 options:v12 results:a5 error:a6];
  }

  return v21;
}

@end