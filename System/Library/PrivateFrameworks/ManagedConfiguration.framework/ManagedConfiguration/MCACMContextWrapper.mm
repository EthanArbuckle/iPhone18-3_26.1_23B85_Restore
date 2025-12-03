@interface MCACMContextWrapper
+ (int)externalizedContextForSecretData:(id)data dataType:(unsigned int)type outExternalizedContext:(id *)context outContextRef:(__ACMHandle *)ref;
- (MCACMContextWrapper)initWithExternalizedContext:(id)context contextRef:(__ACMHandle *)ref shouldDestroyContentsOnDealloc:(BOOL)dealloc;
- (void)dealloc;
@end

@implementation MCACMContextWrapper

- (MCACMContextWrapper)initWithExternalizedContext:(id)context contextRef:(__ACMHandle *)ref shouldDestroyContentsOnDealloc:(BOOL)dealloc
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = MCACMContextWrapper;
  v9 = [(MCACMContextWrapper *)&v12 init];
  externalizedContext = v9->_externalizedContext;
  v9->_externalizedContext = contextCopy;
  v9->_contextRef = ref;

  v9->_shouldDestroyContentsOnDealloc = dealloc;
  return v9;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_contextRef)
  {
    v3 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
    {
      if (self->_shouldDestroyContentsOnDealloc)
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1A795B000, v3, OS_LOG_TYPE_DEBUG, "Deleting ACMContextRef. Should destroy contents: %@", buf, 0xCu);
    }

    ACMContextDelete(self->_contextRef, self->_shouldDestroyContentsOnDealloc);
    self->_contextRef = 0;
  }

  v6.receiver = self;
  v6.super_class = MCACMContextWrapper;
  [(MCACMContextWrapper *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

+ (int)externalizedContextForSecretData:(id)data dataType:(unsigned int)type outExternalizedContext:(id *)context outContextRef:(__ACMHandle *)ref
{
  v30 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = objc_opt_new();
  v19 = 0;
  v10 = ACMContextCreate(&v19);
  if (v10)
  {
    v11 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      typeCopy = v10;
      _os_log_impl(&dword_1A795B000, v11, OS_LOG_TYPE_ERROR, "Couldn't create auth context: ACM err %d", buf, 8u);
    }

    v12 = v19;
    if (v19)
    {
LABEL_5:
      ACMContextDelete(v12, 1);
    }
  }

  else if (dataCopy && (v13 = v19, v14 = dataCopy, (v10 = ACMContextSetData(v13, type, [dataCopy bytes], objc_msgSend(dataCopy, "length"))) != 0))
  {
    v15 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      typeCopy = type;
      v28 = 1024;
      v29 = v10;
      _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_ERROR, "Couldn't set secret data for type %d in auth context: ACM err %d", buf, 0xEu);
    }

    v12 = v19;
    if (v19)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __102__MCACMContextWrapper_externalizedContextForSecretData_dataType_outExternalizedContext_outContextRef___block_invoke;
    v18[3] = &unk_1E77D2500;
    v18[4] = &v20;
    ACMContextGetExternalForm(v19, v18);
    if (context)
    {
      *context = v21[5];
    }

    if (ref)
    {
      v10 = 0;
      *ref = v19;
    }

    else
    {
      if (v19)
      {
        ACMContextDelete(v19, 1);
      }

      v10 = 0;
    }
  }

  _Block_object_dispose(&v20, 8);

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __102__MCACMContextWrapper_externalizedContextForSecretData_dataType_outExternalizedContext_outContextRef___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x1EEE66BB8]();
}

@end