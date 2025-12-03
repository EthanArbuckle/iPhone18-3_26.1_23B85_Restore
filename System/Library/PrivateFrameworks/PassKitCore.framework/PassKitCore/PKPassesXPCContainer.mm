@interface PKPassesXPCContainer
- ($06E035DAA80D7DA92D7AC3530BEA5F2A)unarchivePassesWithBlock:(id)block;
- ($06E035DAA80D7DA92D7AC3530BEA5F2A)unarchivePassesWithOptions:(unint64_t)options usingBlock:(id)block;
- (BOOL)isInvalidated;
- (PKPassesXPCContainer)initWithCoder:(id)coder;
- (PKPassesXPCContainer)initWithFileDescriptor:(int)descriptor;
- (PKPassesXPCContainer)initWithFileURL:(id)l;
- (id)_init;
- (id)_initWithFileDescriptorContainer:(id)container;
- (void)_unarchive;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
@end

@implementation PKPassesXPCContainer

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPassesXPCContainer;
  result = [(PKPassesXPCContainer *)&v3 init];
  if (result)
  {
    *(result + 2) = 0;
    *(result + 4) = 1;
  }

  return result;
}

- (id)_initWithFileDescriptorContainer:(id)container
{
  containerCopy = container;
  if (containerCopy)
  {
    _init = [(PKPassesXPCContainer *)self _init];
    v7 = _init;
    if (_init)
    {
      objc_storeStrong(_init + 2, container);
    }

    else
    {
      [containerCopy invalidate];
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKPassesXPCContainer)initWithFileURL:(id)l
{
  lCopy = l;
  v5 = [[PKFileDescriptorXPCContainer alloc] initWithFileURL:lCopy];

  v6 = [(PKPassesXPCContainer *)self _initWithFileDescriptorContainer:v5];
  return v6;
}

- (PKPassesXPCContainer)initWithFileDescriptor:(int)descriptor
{
  v4 = [[PKFileDescriptorXPCContainer alloc] initWithFileDescriptor:*&descriptor];
  v5 = [(PKPassesXPCContainer *)self _initWithFileDescriptorContainer:v4];

  return v5;
}

- (PKPassesXPCContainer)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(PKPassesXPCContainer *)self _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fd"];
    fd = _init->_fd;
    _init->_fd = v6;

    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 initWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"passFDs"];
    passFDs = _init->_passFDs;
    _init->_passFDs = v12;

    _init->_status = [coderCopy decodeIntegerForKey:@"status"];
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  [coderCopy encodeObject:self->_fd forKey:@"fd"];
  [coderCopy encodeObject:self->_passFDs forKey:@"passFDs"];
  [coderCopy encodeInteger:self->_status forKey:@"status"];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  [(PKPassesXPCContainer *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKPassesXPCContainer;
  [(PKPassesXPCContainer *)&v3 dealloc];
}

- (BOOL)isInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return invalidated;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(PKFileDescriptorXPCContainer *)self->_fd invalidate];
    fd = self->_fd;
    self->_fd = 0;

    [(NSDictionary *)self->_passFDs enumerateKeysAndObjectsUsingBlock:&__block_literal_global_92];
    passFDs = self->_passFDs;
    self->_passFDs = 0;

    self->_status = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- ($06E035DAA80D7DA92D7AC3530BEA5F2A)unarchivePassesWithBlock:(id)block
{
  v3 = [(PKPassesXPCContainer *)self unarchivePassesWithOptions:0 usingBlock:block];
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- ($06E035DAA80D7DA92D7AC3530BEA5F2A)unarchivePassesWithOptions:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  v52 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  [(PKPassesXPCContainer *)self _unarchive];
  status = self->_status;
  v25 = [(NSDictionary *)self->_passFDs count];
  if (!blockCopy || status)
  {
    v26 = status;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v7 = [(NSDictionary *)self->_passFDs copy];
    os_unfair_lock_unlock(&self->_lock);
    if (v7)
    {
      v27 = v7;
      v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v25];
      allKeys = [v7 allKeys];
      [v28 addObjectsFromArray:allKeys];

      [v28 sortUsingComparator:&__block_literal_global_31_1];
      invalidated = 0;
      if (!v25)
      {
        goto LABEL_27;
      }

      v10 = 0;
      v26 = 0;
      v11 = v25 - 1;
      *&v9 = 138412546;
      v24 = v9;
      do
      {
        v12 = objc_autoreleasePoolPush();
        if ((optionsCopy & 2) != 0)
        {
          v13 = v11;
        }

        else
        {
          v13 = v10;
        }

        v14 = [v28 objectAtIndexedSubscript:{v13, v24}];
        v15 = [v27 objectForKeyedSubscript:v14];
        if (!invalidated)
        {
          v41 = 0;
          v42 = &v41;
          v43 = 0x3032000000;
          v44 = __Block_byref_object_copy__28;
          v45 = __Block_byref_object_dispose__28;
          v46 = 0;
          v35 = 0;
          v36 = &v35;
          v37 = 0x3032000000;
          v38 = __Block_byref_object_copy__28;
          v39 = __Block_byref_object_dispose__28;
          v40 = 0;
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __62__PKPassesXPCContainer_unarchivePassesWithOptions_usingBlock___block_invoke_32;
          v31[3] = &unk_1E79D2480;
          v31[4] = self;
          v16 = v14;
          v32 = v16;
          v33 = &v41;
          v34 = &v35;
          [v15 accessFileDescriptorWithBlock:v31];
          v17 = v42[5];
          if (v17 && (v18 = (v36 + 5), obj = v36[5], v19 = [(PKObject *)PKPass createWithFileDataAccessor:v17 warnings:0 error:&obj], objc_storeStrong(v18, obj), v19))
          {
            v20 = PKLogFacilityTypeGetObject(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v49 = v16;
              _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "PKPassesXPCContainer: unarchived %@.", buf, 0xCu);
            }
          }

          else
          {
            v20 = PKLogFacilityTypeGetObject(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = v36[5];
              *buf = v24;
              v49 = v16;
              v50 = 2112;
              v51 = v21;
              _os_log_error_impl(&dword_1AD337000, v20, OS_LOG_TYPE_ERROR, "PKPassesXPCContainer: failed to unarchive %@ - %@.", buf, 0x16u);
            }

            v19 = 0;
          }

          blockCopy[2](blockCopy, v19, v10, v16, &invalidated);
          if (!invalidated)
          {
            os_unfair_lock_lock(&self->_lock);
            invalidated = self->_invalidated;
            if (invalidated)
            {
              v26 = self->_status;
            }

            os_unfair_lock_unlock(&self->_lock);
          }

          _Block_object_dispose(&v35, 8);
          _Block_object_dispose(&v41, 8);
        }

        objc_autoreleasePoolPop(v12);
        ++v10;
        --v11;
      }

      while (v11 != -1);
      if (v26)
      {
        v25 = 0;
      }

      else
      {
LABEL_27:
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  v23 = v25;
  v22 = v26;
  result.var1 = v23;
  result.var0 = v22;
  return result;
}

void __62__PKPassesXPCContainer_unarchivePassesWithOptions_usingBlock___block_invoke_32(void *a1, uint64_t a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v4 = *(a1[4] + 40);
    if (v4)
    {
      v5 = [v4 URLByAppendingPathComponent:a1[5] isDirectory:1];
    }

    else
    {
      v5 = 0;
    }

    v12 = 0;
    v6 = [[PKSerializedDataAccessor alloc] initWithFileDescriptor:a2 error:&v12 outputURL:v5];
    v7 = v12;
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v6;

    v10 = *(a1[7] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v7;
  }
}

- (void)_unarchive
{
  v55 = *MEMORY[0x1E69E9840];
  if (self->_invalidated)
  {
    return;
  }

  fd = self->_fd;
  if (!fd)
  {
    return;
  }

  if (self->_passFDs)
  {
    goto LABEL_42;
  }

  context = objc_autoreleasePoolPush();
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__28;
  v47 = __Block_byref_object_dispose__28;
  v48 = 0;
  v4 = self->_fd;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __34__PKPassesXPCContainer__unarchive__block_invoke;
  v42[3] = &unk_1E79D24A8;
  v42[4] = self;
  v42[5] = &v43;
  [(PKFileDescriptorXPCContainer *)v4 accessFileDescriptorWithBlock:v42];
  if (!v44[5])
  {
    goto LABEL_41;
  }

  v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager contentsOfDirectoryAtURL:v44[5] includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:4 error:0];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v5 = 0;
  v6 = [obj countByEnumeratingWithState:&v38 objects:v54 count:16];
  if (!v6)
  {
LABEL_26:

    v22 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v53.st_dev = 134217984;
      *&v53.st_mode = v5;
      _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "PKPassesXPCContainer: unarchived with %lu passes.", &v53, 0xCu);
    }

LABEL_37:
    if (!v5)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v37 = *v39;
  *&v7 = 138412290;
  v32 = v7;
LABEL_7:
  v8 = 0;
  while (1)
  {
    if (*v39 != v37)
    {
      objc_enumerationMutation(obj);
    }

    v9 = *(*(&v38 + 1) + 8 * v8);
    lastPathComponent = [v9 lastPathComponent];
    pathExtension = [lastPathComponent pathExtension];
    if (([pathExtension isEqualToString:@"pkpass"] & 1) == 0)
    {
      goto LABEL_24;
    }

    if (++v5 >= 0xB)
    {
      v23 = PKLogFacilityTypeGetObject(0);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      LOWORD(v53.st_dev) = 0;
      v24 = "PKPassesXPCContainer: too many .pkpass files found in archive.";
      v25 = v23;
      v26 = 2;
      goto LABEL_33;
    }

    v12 = v9;
    v13 = open([v9 fileSystemRepresentation], 2097156);
    v14 = v13;
    if ((v13 & 0x80000000) != 0)
    {
      break;
    }

    memset(&v53, 0, sizeof(v53));
    if (fstat(v13, &v53))
    {
      v15 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEFAULT))
      {
        v16 = __error();
        v17 = strerror(*v16);
        *buf = 138412546;
        v50 = v9;
        v51 = 2082;
        v52 = v17;
        p_super = &v15->super;
        v19 = "PKPassesXPCContainer: could not fstat pass %@ - %{public}s.";
        v20 = 22;
LABEL_21:
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, v19, buf, v20);
      }
    }

    else if ((v53.st_mode & 0xF000) == 0x8000)
    {
      v15 = [[PKFileDescriptorXPCContainer alloc] initWithFileDescriptor:v14];
      if (v15)
      {
        [v35 setObject:v15 forKeyedSubscript:lastPathComponent];
        v21 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v32;
        v50 = v9;
        p_super = &v15->super;
        v19 = "PKPassesXPCContainer: %@ is not a pkpass file.";
        v20 = 12;
        goto LABEL_21;
      }
    }

    v21 = 1;
LABEL_23:

    close(v14);
    if (v21)
    {
      goto LABEL_35;
    }

LABEL_24:

    if (v6 == ++v8)
    {
      v6 = [obj countByEnumeratingWithState:&v38 objects:v54 count:16];
      if (v6)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }
  }

  v23 = PKLogFacilityTypeGetObject(0);
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_34;
  }

  v27 = __error();
  v28 = strerror(*v27);
  v53.st_dev = 138412546;
  *&v53.st_mode = v9;
  WORD2(v53.st_ino) = 2082;
  *(&v53.st_ino + 6) = v28;
  v24 = "PKPassesXPCContainer: failed to open pass at %@ - %{public}s.";
  v25 = v23;
  v26 = 22;
LABEL_33:
  _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, v24, &v53, v26);
LABEL_34:

LABEL_35:
  [v35 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_40];

  if (self->_status)
  {
    v35 = 0;
    goto LABEL_37;
  }

  if (v5 >= 0xB)
  {
    v35 = 0;
    self->_status = 3;
    v29 = [0 copy];
    goto LABEL_39;
  }

  v35 = 0;
  self->_status = 1;
  if (v5)
  {
LABEL_38:
    v29 = [v35 copy];
LABEL_39:
    passFDs = self->_passFDs;
    self->_passFDs = v29;
  }

LABEL_40:
  [defaultManager removeItemAtURL:v44[5] error:0];

LABEL_41:
  _Block_object_dispose(&v43, 8);

  objc_autoreleasePoolPop(context);
  fd = self->_fd;
LABEL_42:
  [(PKFileDescriptorXPCContainer *)fd invalidate];
  v31 = self->_fd;
  self->_fd = 0;
}

void __34__PKPassesXPCContainer__unarchive__block_invoke(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(*(a1 + 32) + 40);
  if (a2 < 0)
  {
    v9 = 1;
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
    if (fstat(a2, &v13))
    {
      v6 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
      {
        v7 = __error();
        v8 = strerror(*v7);
        *buf = 136446210;
        v15 = v8;
        _os_log_impl(&dword_1AD337000, &v6->super, OS_LOG_TYPE_DEFAULT, "PKPassesXPCContainer: could not fstat - %{public}s.", buf, 0xCu);
      }

      v9 = 1;
    }

    else if (v13.st_size < 0x9600001uLL)
    {
      if (v5)
      {
        v10 = PKTemporaryItemNameWithExtension(@"pkpasses");
        v6 = [v5 URLByAppendingPathComponent:v10 isDirectory:1];
      }

      else
      {
        v6 = PKTemporaryItemURLWithExtension(@"pkpasses", 1);
        PKTemporaryItemPrepareDirectory();
      }

      if (PKUnarchiverZip(a2, v6, 0xF00000uLL))
      {
        v11 = v6;
        v9 = 0;
        v12 = *(v4 + 40);
        *(v4 + 40) = v11;
      }

      else
      {
        v12 = [MEMORY[0x1E696AC08] defaultManager];
        [v12 removeItemAtURL:v6 error:0];
        v9 = 1;
      }
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v15 = 157286400;
        _os_log_impl(&dword_1AD337000, &v6->super, OS_LOG_TYPE_DEFAULT, "PKPassesXPCContainer: archive exceeds the size limit of %zu.", buf, 0xCu);
      }

      v9 = 2;
    }
  }

  *(*(a1 + 32) + 32) = v9;
}

@end