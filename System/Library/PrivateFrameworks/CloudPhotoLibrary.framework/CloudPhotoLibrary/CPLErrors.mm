@interface CPLErrors
+ (id)cplErrorCausedBySharedSyncForError:(id)a3;
+ (id)cplErrorWithCode:(int64_t)a3 description:(id)a4;
+ (id)cplErrorWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5;
+ (id)cplErrorWithCode:(int64_t)a3 underlyingError:(id)a4 userInfo:(id)a5 description:(id)a6;
+ (id)cplErrorWithCode:(int64_t)a3 underlyingError:(id)a4 userInfo:(id)a5 description:(id)a6 arguments:(char *)a7;
+ (id)errorsForIdentifiers:(id)a3 error:(id)a4;
+ (id)incorrectMachineStateErrorWithReason:(id)a3;
+ (id)invalidClientCacheErrorWithReason:(id)a3;
+ (id)invalidCloudCacheErrorWithReason:(id)a3;
+ (id)posixErrorForURL:(id)a3;
+ (id)posixErrorForURL:(id)a3 errorCode:(int)a4;
+ (id)preventWipeErrorWithReason:(id)a3 preventedByUser:(BOOL)a4;
+ (id)unableToDeserializeRecordInStorage:(id)a3;
+ (id)unableToSerializeRecordError:(id)a3 inStorage:(id)a4;
+ (id)underlyingErrorWithReason:(id)a3;
@end

@implementation CPLErrors

+ (id)cplErrorCausedBySharedSyncForError:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 userInfo];
  v7 = [v5 initWithDictionary:v6];

  [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"CPLErrorIsCausedBySharedSync"];
  v8 = MEMORY[0x1E696ABC0];
  v9 = [v4 domain];
  v10 = [v4 code];

  v11 = [v8 errorWithDomain:v9 code:v10 userInfo:v7];

  return v11;
}

+ (id)errorsForIdentifiers:(id)a3 error:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 setObject:v6 forKeyedSubscript:{*(*(&v15 + 1) + 8 * i), v15}];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)preventWipeErrorWithReason:(id)a3 preventedByUser:(BOOL)a4
{
  v4 = a4;
  v15[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = @"no reason";
  }

  v14 = @"CPLErrorResetReason";
  v15[0] = v6;
  v7 = MEMORY[0x1E695DF20];
  v8 = a3;
  v9 = [v7 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10 = @"Automatically prevented";
  if (v4)
  {
    v10 = @"User prevented";
  }

  v11 = [a1 cplErrorWithCode:1014 underlyingError:0 userInfo:v9 description:{@"%@ wipe for reason '%@'", v10, v8}];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)cplErrorWithCode:(int64_t)a3 underlyingError:(id)a4 userInfo:(id)a5 description:(id)a6 arguments:(char *)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v13 arguments:a7];
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = v15;
  if (v12)
  {
    [v15 addEntriesFromDictionary:v12];
  }

  if (v14)
  {
    [v16 setObject:v14 forKey:*MEMORY[0x1E696A578]];
  }

  if (v11)
  {
    [v16 setObject:v11 forKey:*MEMORY[0x1E696AA08]];
  }

  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CloudPhotoLibraryErrorDomain" code:a3 userInfo:v16];

  return v17;
}

+ (id)cplErrorWithCode:(int64_t)a3 underlyingError:(id)a4 userInfo:(id)a5 description:(id)a6
{
  v6 = [a1 cplErrorWithCode:a3 underlyingError:a4 userInfo:a5 description:a6 arguments:&v9];

  return v6;
}

+ (id)cplErrorWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5
{
  v5 = [a1 cplErrorWithCode:a3 underlyingError:a4 userInfo:0 description:a5 arguments:&v8];

  return v5;
}

+ (id)cplErrorWithCode:(int64_t)a3 description:(id)a4
{
  v4 = [a1 cplErrorWithCode:a3 description:a4 arguments:&v7];

  return v4;
}

+ (id)posixErrorForURL:(id)a3 errorCode:(int)a4
{
  v37[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!a4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v28 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v31 = 0;
        _os_log_impl(&dword_1DC05A000, v28, OS_LOG_TYPE_ERROR, "Trying to create a POSIX error without any error!", &v31, 2u);
      }
    }

    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLErrors.m"];
    [v29 handleFailureInMethod:a2 object:a1 file:v30 lineNumber:143 description:@"Trying to create a POSIX error without any error!"];

    abort();
  }

  v8 = v7;
  v9 = strerror(a4);
  if (v9 && (v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v9]) != 0)
  {
    v11 = v10;
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A798];
    v14 = *MEMORY[0x1E696A578];
    if (v8)
    {
      v15 = *MEMORY[0x1E696A998];
      v36[0] = *MEMORY[0x1E696A578];
      v36[1] = v15;
      v37[0] = v10;
      v37[1] = v8;
      v16 = MEMORY[0x1E695DF20];
      v17 = v37;
      v18 = v36;
      v19 = 2;
    }

    else
    {
      v34 = *MEMORY[0x1E696A578];
      v35 = v10;
      v16 = MEMORY[0x1E695DF20];
      v17 = &v35;
      v18 = &v34;
      v19 = 1;
    }

    v25 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
    v24 = [v12 errorWithDomain:v13 code:a4 userInfo:v25];
  }

  else
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A798];
    v22 = a4;
    if (v8)
    {
      v32 = *MEMORY[0x1E696A998];
      v33 = v8;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v24 = [v20 errorWithDomain:v21 code:v22 userInfo:v23];
    }

    else
    {
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:a4 userInfo:0];
    }
  }

  v26 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)posixErrorForURL:(id)a3
{
  v4 = a3;
  v5 = [a1 posixErrorForURL:v4 errorCode:*__error()];

  return v5;
}

+ (id)unableToDeserializeRecordInStorage:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 name];

  v8 = [v6 initWithFormat:@"Unable to deserialize record in %@", v7];
  v9 = [a1 invalidClientCacheErrorWithReason:v8];

  return v9;
}

+ (id)unableToSerializeRecordError:(id)a3 inStorage:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = objc_opt_class();

  v11 = [v7 name];

  v12 = [v9 initWithFormat:@"Unable to serialize %@ in %@", v10, v11];
  v13 = [a1 invalidClientCacheErrorWithReason:v12];

  return v13;
}

+ (id)invalidCloudCacheErrorWithReason:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = @"CPLErrorResetReason";
    v10 = a3;
    v3 = MEMORY[0x1E695DF20];
    v4 = a3;
    v5 = [v3 dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v6 = [CPLErrors cplErrorWithCode:21 underlyingError:0 userInfo:v5 description:@"Cloud cache is invalid: %@", v4, v9, v10, v11];
  }

  else
  {
    v6 = [CPLErrors cplErrorWithCode:21 description:@"Cloud cache is invalid"];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)invalidClientCacheErrorWithReason:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = @"CPLErrorResetReason";
    v10 = a3;
    v3 = MEMORY[0x1E695DF20];
    v4 = a3;
    v5 = [v3 dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v6 = [CPLErrors cplErrorWithCode:20 underlyingError:0 userInfo:v5 description:@"Client cache is invalid: %@", v4, v9, v10, v11];
  }

  else
  {
    v6 = [CPLErrors cplErrorWithCode:20 description:@"Client cache is invalid"];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)underlyingErrorWithReason:(id)a3
{
  v3 = [a1 cplErrorWithCode:256 description:a3 arguments:&v6];

  return v3;
}

+ (id)incorrectMachineStateErrorWithReason:(id)a3
{
  v3 = [a1 cplErrorWithCode:100 description:a3 arguments:&v6];

  return v3;
}

@end