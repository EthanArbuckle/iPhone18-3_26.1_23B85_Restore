@interface REAudioGroupPayload
- (REAudioGroupPayload)initWithCoder:(id)a3;
- (REAudioGroupPayload)initWithPayloads:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REAudioGroupPayload

- (REAudioGroupPayload)initWithPayloads:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REAudioGroupPayload;
  v6 = [(RESharedResourcePayload *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payloads, a3);
  }

  return v7;
}

- (REAudioGroupPayload)initWithCoder:(id)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25.receiver = self;
    v25.super_class = REAudioGroupPayload;
    v5 = [(RESharedResourcePayload *)&v25 initWithCoder:v4];
    if (v5)
    {
      v6 = MEMORY[0x1E695DFD8];
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = [v6 setWithObjects:{v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
      v24 = 0;
      v14 = [v4 decodeTopLevelObjectOfClasses:v13 forKey:@"payloads" error:&v24];
      v15 = v24;
      payloads = v5->_payloads;
      v5->_payloads = v14;

      if (v15)
      {
        v18 = *re::audioLogObjects(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v27 = v15;
          _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Failed to decode AudioGroupPayload: %@", buf, 0xCu);
        }
      }
    }

    self = v5;
    v19 = self;
  }

  else
  {
    v20 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A278];
    v29[0] = @"REAudioGroupPayload requires an NSXPCCoder";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v21];
    [v4 failWithError:v22];

    v19 = 0;
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 encodeObject:self->_payloads forKey:@"payloads"];
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A278];
    v9[0] = @"REAudioPayload requires an NSXPCCoder";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v7 = [v5 errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v6];
    [v4 failWithError:v7];
  }
}

@end