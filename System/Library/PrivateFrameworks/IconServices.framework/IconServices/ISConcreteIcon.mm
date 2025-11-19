@interface ISConcreteIcon
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIcon:(id)a3;
- (ISConcreteIcon)initWithCoder:(id)a3;
- (ISConcreteIcon)initWithDigest:(id)a3;
- (id)_cachedImageForDescriptor:(id)a3;
- (id)_imageForSymbolImageDescriptor:(id)a3;
- (id)_imageFromStoreForDescriptor:(id)a3;
- (id)_placeholderImageForError:(id)a3 descriptor:(id)a4;
- (id)generateImageWithDescriptor:(id)a3;
- (id)imageForDescriptor:(id)a3;
- (id)makeResourceProvider;
- (id)symbol;
- (unint64_t)assessValidationToken:(id)a3;
- (unint64_t)hash;
- (void)_prepareImagesForImageDescriptors:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)generateImageWithDescriptor:(id)a3 completion:(id)a4;
- (void)getImageForImageDescriptor:(id)a3 completion:(id)a4;
@end

@implementation ISConcreteIcon

- (unint64_t)hash
{
  v2 = [(ISConcreteIcon *)self digest];
  v3 = [v2 hash];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 hash];

  return v6 ^ v3;
}

- (ISConcreteIcon)initWithDigest:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ISConcreteIcon;
  v6 = [(ISCodableIcon *)&v10 _init];
  if (v6)
  {
    v7 = objc_alloc_init(ISImageCache);
    imageCache = v6->_imageCache;
    v6->_imageCache = v7;

    objc_storeStrong(&v6->_digest, a3);
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ISConcreteIcon *)self digest];
  [v4 encodeObject:v5 forKey:@"digest"];
}

- (ISConcreteIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ISConcreteIcon;
  v5 = [(ISCodableIcon *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"digest"];
    digest = v5->_digest;
    v5->_digest = v6;

    v8 = objc_alloc_init(ISImageCache);
    imageCache = v5->_imageCache;
    v5->_imageCache = v8;
  }

  return v5;
}

- (BOOL)isEqualToIcon:(id)a3
{
  v4 = a3;
  v5 = [(ISConcreteIcon *)self digest];
  v6 = [v4 digest];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ISConcreteIcon *)self isEqualToIcon:v4];
  }

  return v5;
}

- (id)makeResourceProvider
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"Abstract method called." reason:0 userInfo:0];
  objc_exception_throw(v2);
}

- (id)_imageFromStoreForDescriptor:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ISIcon *)self manager];
  v6 = [v5 iconCache];
  v49 = 0;
  v50 = 0;
  v7 = [v6 findStoreUnitForIcon:self descriptor:v4 UUID:&v50 validationToken:&v49];
  v8 = v50;
  v9 = v49;

  v10 = 0;
  if (v7)
  {
    v11 = [(ISIcon *)self manager];
    v12 = [v11 iconCache];
    v13 = [v12 storeUnitForUUID:v8];

    v14 = [v13 data];
    if (v14 && (v15 = v14, [v13 UUID], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      v17 = objc_alloc(MEMORY[0x1E69A8988]);
      v18 = [v13 data];
      v19 = [v13 UUID];
      v10 = [v17 initWithData:v18 uuid:v19 validationToken:v9];

      if (v4)
      {
        v20 = _ISPrepareISIconSignpostLog();
        v21 = os_signpost_enabled(v20);

        if (v21)
        {
          v41 = v13;
          v42 = v9;
          v43 = v8;
          v44 = v4;
          v22 = [(ISIcon *)self _activeSignpostsForDescriptor:v4];
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v23 = [v22 countByEnumeratingWithState:&v45 objects:v61 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v46;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v46 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v45 + 1) + 8 * i);
                if ([v27 unsignedLongLongValue])
                {
                  v28 = _ISPrepareISIconSignpostLog();
                  v29 = os_signpost_enabled(v28);

                  if (v29)
                  {
                    v30 = _ISPrepareISIconSignpostLog();
                    v31 = [v27 unsignedLongLongValue];
                    if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v32 = v31;
                      if (os_signpost_enabled(v30))
                      {
                        v33 = [v10 uuid];
                        *buf = 138412290;
                        v52 = v33;
                        _os_signpost_emit_with_name_impl(&dword_1A77B8000, v30, OS_SIGNPOST_EVENT, v32, "PrepareISIcon", "SATISFIED_PERSISTENT_CACHE: %@", buf, 0xCu);
                      }
                    }
                  }
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v45 objects:v61 count:16];
            }

            while (v24);
          }

          v8 = v43;
          v4 = v44;
          v13 = v41;
          v9 = v42;
        }
      }

      if (v10 && [v10 CGImage])
      {
        goto LABEL_28;
      }

      v34 = _ISDefaultLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        v35 = [v13 UUID];
        v36 = [v35 UUIDString];
        v37 = [v10 CGImage];
        *buf = 138413314;
        v52 = self;
        v53 = 2112;
        v54 = v4;
        v55 = 2112;
        v56 = v36;
        v57 = 2112;
        v58 = v10;
        v59 = 2112;
        v60 = v37;
        _os_log_fault_impl(&dword_1A77B8000, v34, OS_LOG_TYPE_FAULT, "Failed to retrieve persistent cache entry. %@ - %@ with unitUUID: %@. Image: %@. Backing: %@", buf, 0x34u);
      }
    }

    else
    {
      v34 = _ISDefaultLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v8;
        _os_log_impl(&dword_1A77B8000, v34, OS_LOG_TYPE_DEFAULT, "Store Unit: %@ not found.", buf, 0xCu);
      }

      v10 = 0;
    }

LABEL_28:
  }

  v38 = v10;

  v39 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)_cachedImageForDescriptor:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ISImageCache *)self->_imageCache imageForDescriptor:v4];
  v6 = [MEMORY[0x1E69A8980] defaultIconSpecification];
  [v6 maxSize];
  v8 = v7;

  v9 = [MEMORY[0x1E69A8980] defaultIconSpecification];
  [v9 maxScale];
  v11 = v10;

  if (!v5 || ([v5 iconSize], v13 = v12, objc_msgSend(v4, "size"), v13 >= v14) || (objc_msgSend(v5, "iconSize"), v15 == v8) && (objc_msgSend(v5, "scale"), v16 == v11))
  {
    [v5 minimumSize];
    v32 = v31;
    [v4 size];
    if (v32 > v33)
    {
      v34 = [objc_alloc(MEMORY[0x1E69A89A0]) initWithImage:v5];

      v5 = v34;
    }

    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E69A8980] iosDocumentIconSpecification];
    [v4 size];
    v19 = v18;
    v21 = v20;
    [v4 scale];
    v23 = [v17 imageSpecificationForSize:v19 scale:{v21, v22}];

    [v5 iconSize];
    v25 = v24;
    [v23 size];
    if (v25 == v26 && ([v5 iconSize], v28 = v27, objc_msgSend(v23, "size"), v28 == v29))
    {
      v30 = _ISDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [ISConcreteIcon _cachedImageForDescriptor:];
      }
    }

    else
    {

      v5 = 0;
    }

    if (!v5)
    {
LABEL_16:
      v5 = [(ISConcreteIcon *)self _imageFromStoreForDescriptor:v4];
      if (v5)
      {
        [(ISImageCache *)self->_imageCache setImage:v5 forDescriptor:v4];
      }
    }
  }

  v35 = [v5 validationToken];

  if (v35)
  {
    v36 = [v5 validationToken];
    v37 = [(ISConcreteIcon *)self assessValidationToken:v36];

    [v5 setPlaceholder:v37 == 2];
  }

  if (v5)
  {
    v38 = _ISDefaultLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      [v4 size];
      v42 = v41;
      [v5 size];
      v44 = v43;
      [v4 size];
      v46 = v45;
      [v5 size];
      v48 = v47;
      [v5 scale];
      v50 = 138414338;
      v51 = self;
      v52 = 2112;
      v53 = v4;
      v54 = 2048;
      v55 = v42;
      v56 = 2048;
      v57 = v44;
      v58 = 2048;
      v59 = v46;
      v60 = 2048;
      v61 = v48;
      v62 = 2048;
      v63 = v49;
      v64 = 1024;
      v65 = [v5 placeholder];
      v66 = 2112;
      v67 = v5;
    }
  }

  v39 = *MEMORY[0x1E69E9840];

  return v5;
}

- (unint64_t)assessValidationToken:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DEF0] _is_invalidToken];
  v6 = [v4 isEqual:v5];

  if (!v6)
  {
    v11 = [MEMORY[0x1E695DEF0] _is_staleToken];
    v12 = [v4 isEqual:v11];

    if (v12)
    {
      v13 = _ISTraceLog();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

      if (v14)
      {
        v10 = _ISTraceLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [ISConcreteIcon assessValidationToken:];
        }

        v8 = 1;
        goto LABEL_35;
      }

      v8 = 1;
      goto LABEL_36;
    }

    v15 = [MEMORY[0x1E695DEF0] _is_validToken];
    v16 = [v4 isEqual:v15];

    if (v16)
    {
      v17 = _ISTraceLog();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);

      if (v18)
      {
        v10 = _ISTraceLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [ISConcreteIcon assessValidationToken:];
        }

        v8 = 0;
        goto LABEL_35;
      }

      v8 = 0;
      goto LABEL_36;
    }

    v35 = 0;
    v36 = 0;
    [MEMORY[0x1E6963688] _is_getSequenceNumber:&v36 andUUID:&v35];
    v10 = v35;
    *uu2 = 0;
    v38 = 0;
    [v10 getUUIDBytes:uu2];
    if ([v4 length] == 40)
    {
      v19 = [v4 bytes];
      if (v19)
      {
        v20 = v19;
        if (*(v19 + 16) == v36 && !uuid_compare(v19, uu2))
        {
          v23 = _ISDefaultLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [ISConcreteIcon assessValidationToken:];
          }

          v8 = 0;
          goto LABEL_34;
        }

        v21 = _ISDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [ISConcreteIcon assessValidationToken:];
        }

        v22 = [(ISConcreteIcon *)self imageCache];
        v23 = [v22 latestValidationToken];

        if ([v23 length]== 40)
        {
          v24 = [v23 bytes];
          if (v24)
          {
            v25 = uuid_compare((v24 + 24), (v20 + 24));
            v26 = _ISTraceLog();
            v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);

            if (!v25)
            {
              if (!v27)
              {
                v8 = 1;
                goto LABEL_34;
              }

              v28 = _ISTraceLog();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                [ISConcreteIcon assessValidationToken:];
              }

              v8 = 1;
              goto LABEL_51;
            }

            if (v27)
            {
              v28 = _ISTraceLog();
              v8 = 2;
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                [ISConcreteIcon assessValidationToken:];
LABEL_46:
                v8 = 2;
              }

LABEL_51:

              goto LABEL_34;
            }

            goto LABEL_33;
          }

          v33 = _ISTraceLog();
          v8 = 2;
          v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);

          if (!v34)
          {
            goto LABEL_34;
          }

          v28 = _ISTraceLog();
          v8 = 2;
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_51;
          }
        }

        else
        {
          v31 = _ISTraceLog();
          v8 = 2;
          v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);

          if (!v32)
          {
            goto LABEL_34;
          }

          v28 = _ISTraceLog();
          v8 = 2;
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_51;
          }
        }

        [ISConcreteIcon assessValidationToken:];
        goto LABEL_46;
      }

      v23 = _ISDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        [(ISConcreteIcon *)v4 assessValidationToken:v23];
      }
    }

    else
    {
      v23 = _ISDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        [(ISConcreteIcon *)v4 assessValidationToken:v23];
      }
    }

LABEL_33:
    v8 = 2;
LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

  v7 = _ISTraceLog();
  v8 = 2;
  v9 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = _ISTraceLog();
    v8 = 2;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ISConcreteIcon assessValidationToken:];
      v8 = 2;
    }

    goto LABEL_35;
  }

LABEL_36:

  v29 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)_placeholderImageForError:(id)a3 descriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_placeholderImageForError_descriptor__once != -1)
  {
    [ISConcreteIcon _placeholderImageForError:descriptor:];
  }

  if (_placeholderImageForError_descriptor__isInternal == 1 && _ISErrorIsXPCConnectionInterrupted(v6))
  {
    v8 = MEMORY[0x1E69A8988];
    v9 = [(ISConcreteIcon *)self _fallbackKey];
    v10 = [v8 _debugPlaceholderImageWithImageDescriptor:v7 markAsPlaceholder:0 fallbackTypeID:v9 referenceIcon:self];
  }

  else
  {
    v11 = MEMORY[0x1E69A8988];
    v9 = [(ISConcreteIcon *)self _fallbackKey];
    v10 = [v11 _placeholderImageWithImageDescriptor:v7 markAsPlaceholder:0 fallbackTypeID:v9 referenceIcon:self];
  }

  v12 = v10;

  return v12;
}

uint64_t __55__ISConcreteIcon__placeholderImageForError_descriptor___block_invoke()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    _placeholderImageForError_descriptor__isInternal = 1;
  }

  return result;
}

- (id)generateImageWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ISGenerationRequest);
  [(ISGenerationRequest *)v5 setImageDescriptor:v4];
  [(ISGenerationRequest *)v5 setIcon:self];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke;
  v11[3] = &unk_1E77C6940;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  v7 = v5;
  v13 = v7;
  v14 = &v15;
  v8 = _ISRetryRequest(v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

id __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v2 = [*(a1 + 32) manager];
  v3 = [v2 connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke_2;
  v17[3] = &unk_1E77C68F0;
  v4 = *(a1 + 40);
  v17[4] = *(a1 + 32);
  v18 = v4;
  v19 = &v20;
  v5 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v17];

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke_18;
  v13[3] = &unk_1E77C6918;
  v13[4] = *(a1 + 32);
  v8 = v6;
  v9 = *(a1 + 56);
  v14 = v8;
  v15 = v9;
  v16 = &v20;
  [v5 generateImageWithRequest:v7 reply:v13];
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v10 = 0;
  }

  else
  {
    v10 = v21[5];
  }

  v11 = v10;

  _Block_object_dispose(&v20, 8);

  return v11;
}

void __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ISDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke_2_cold_1(a1);
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = _ISDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke_18_cold_1(a1, v3);
    }
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E69A8988]);
    v7 = [v3 data];
    v8 = [v3 uuid];
    v9 = [v3 validationToken];
    v10 = [v6 initWithData:v7 uuid:v8 validationToken:v9];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v13 = [*(a1 + 32) _placeholderImageForError:*(*(*(a1 + 56) + 8) + 40) descriptor:*(a1 + 40)];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

- (void)_prepareImagesForImageDescriptors:(id)a3
{
  v88 = *MEMORY[0x1E69E9840];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v79;
    v7 = 0x1E77C5000uLL;
    v59 = *v79;
    v60 = self;
    do
    {
      v8 = 0;
      v61 = v5;
      do
      {
        if (*v79 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v78 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = *(v7 + 3952);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = +[ISDefaults sharedInstance];
          [v12 prepareImageDelay];
          v14 = v13;

          if (v14 > 0.0)
          {
            if (v9)
            {
              v15 = _ISPrepareISIconSignpostLog();
              v16 = os_signpost_enabled(v15);

              if (v16)
              {
                v63 = v10;
                v17 = [(ISIcon *)self _activeSignpostsForDescriptor:v9];
                v74 = 0u;
                v75 = 0u;
                v76 = 0u;
                v77 = 0u;
                v18 = [v17 countByEnumeratingWithState:&v74 objects:v86 count:16];
                if (v18)
                {
                  v19 = v18;
                  v20 = *v75;
                  do
                  {
                    for (i = 0; i != v19; ++i)
                    {
                      if (*v75 != v20)
                      {
                        objc_enumerationMutation(v17);
                      }

                      v22 = *(*(&v74 + 1) + 8 * i);
                      if ([v22 unsignedLongLongValue])
                      {
                        v23 = _ISPrepareISIconSignpostLog();
                        v24 = os_signpost_enabled(v23);

                        if (v24)
                        {
                          v25 = _ISPrepareISIconSignpostLog();
                          v26 = [v22 unsignedLongLongValue];
                          if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                          {
                            v27 = v26;
                            if (os_signpost_enabled(v25))
                            {
                              *buf = 134217984;
                              v85 = v14 * 1000000.0;
                              _os_signpost_emit_with_name_impl(&dword_1A77B8000, v25, OS_SIGNPOST_EVENT, v27, "PrepareISIcon", "DELAYING_PREPARE: - delay: %lf , ", buf, 0xCu);
                            }
                          }
                        }
                      }
                    }

                    v19 = [v17 countByEnumeratingWithState:&v74 objects:v86 count:16];
                  }

                  while (v19);
                }

                v6 = v59;
                self = v60;
                v7 = 0x1E77C5000;
                v5 = v61;
                v10 = v63;
              }
            }

            usleep((v14 * 1000000.0));
          }

          if ([v9 ignoreCache] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            if (!v9)
            {
              v41 = 0;
              goto LABEL_65;
            }

            v28 = _ISPrepareISIconSignpostLog();
            v29 = os_signpost_enabled(v28);

            if (v29)
            {
              v64 = v10;
              v30 = [(ISIcon *)self _activeSignpostsForDescriptor:v9];
              v70 = 0u;
              v71 = 0u;
              v72 = 0u;
              v73 = 0u;
              v31 = [v30 countByEnumeratingWithState:&v70 objects:v83 count:16];
              if (v31)
              {
                v32 = v31;
                v33 = *v71;
                do
                {
                  for (j = 0; j != v32; ++j)
                  {
                    if (*v71 != v33)
                    {
                      objc_enumerationMutation(v30);
                    }

                    v35 = *(*(&v70 + 1) + 8 * j);
                    if ([v35 unsignedLongLongValue])
                    {
                      v36 = _ISPrepareISIconSignpostLog();
                      v37 = os_signpost_enabled(v36);

                      if (v37)
                      {
                        v38 = _ISPrepareISIconSignpostLog();
                        v39 = [v35 unsignedLongLongValue];
                        if ((v39 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                        {
                          v40 = v39;
                          if (os_signpost_enabled(v38))
                          {
                            *buf = 0;
                            _os_signpost_emit_with_name_impl(&dword_1A77B8000, v38, OS_SIGNPOST_EVENT, v40, "PrepareISIcon", "PREPARE_IGNORING_CACHE", buf, 2u);
                          }
                        }
                      }
                    }
                  }

                  v32 = [v30 countByEnumeratingWithState:&v70 objects:v83 count:16];
                }

                while (v32);
              }

              v41 = 0;
              v6 = v59;
              self = v60;
              v7 = 0x1E77C5000;
              v5 = v61;
              v10 = v64;
LABEL_46:
              if (!v9)
              {
LABEL_65:
                v56 = [(ISConcreteIcon *)self generateImageWithDescriptor:v9];
                [(ISImageCache *)self->_imageCache setImage:v56 forDescriptor:v9];

                goto LABEL_66;
              }
            }

            else
            {
              v41 = 0;
            }

            v65 = v10;
            v43 = _ISPrepareISIconSignpostLog();
            v44 = os_signpost_enabled(v43);

            if (v44)
            {
              v58 = v41;
              v45 = [(ISIcon *)self _activeSignpostsForDescriptor:v9];
              v66 = 0u;
              v67 = 0u;
              v68 = 0u;
              v69 = 0u;
              v46 = [v45 countByEnumeratingWithState:&v66 objects:v82 count:16];
              if (v46)
              {
                v47 = v46;
                v48 = *v67;
                do
                {
                  for (k = 0; k != v47; ++k)
                  {
                    if (*v67 != v48)
                    {
                      objc_enumerationMutation(v45);
                    }

                    v50 = *(*(&v66 + 1) + 8 * k);
                    if ([v50 unsignedLongLongValue])
                    {
                      v51 = _ISPrepareISIconSignpostLog();
                      v52 = os_signpost_enabled(v51);

                      if (v52)
                      {
                        v53 = _ISPrepareISIconSignpostLog();
                        v54 = [v50 unsignedLongLongValue];
                        if ((v54 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                        {
                          v55 = v54;
                          if (os_signpost_enabled(v53))
                          {
                            *buf = 0;
                            _os_signpost_emit_with_name_impl(&dword_1A77B8000, v53, OS_SIGNPOST_EVENT, v55, "PrepareISIcon", "PREPARE_IMAGE", buf, 2u);
                          }
                        }
                      }
                    }
                  }

                  v47 = [v45 countByEnumeratingWithState:&v66 objects:v82 count:16];
                }

                while (v47);
              }

              v6 = v59;
              self = v60;
              v7 = 0x1E77C5000;
              v5 = v61;
              v10 = v65;
              v41 = v58;
            }

            else
            {
              v10 = v65;
            }

            goto LABEL_65;
          }

          v42 = [(ISConcreteIcon *)self _cachedImageForDescriptor:v9];
          v41 = v42;
          if (!v42 || [v42 placeholder])
          {
            goto LABEL_46;
          }

LABEL_66:
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v8 != v5);
      v5 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
    }

    while (v5);
  }

  v57 = *MEMORY[0x1E69E9840];
}

- (id)_imageForSymbolImageDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(ISConcreteIcon *)self makeSymbolResourceProvider];
  v6 = [v5 symbol];
  v7 = [v6 imageForDescriptor:v4];

  return v7;
}

- (id)symbol
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(ISConcreteIcon *)self makeSymbolResourceProvider];
  v4 = [v3 symbol];
  if (!v4)
  {
    v5 = _ISDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&dword_1A77B8000, v5, OS_LOG_TYPE_INFO, "Failed to get symbol for %@", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)imageForDescriptor:(id)a3
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 copy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [(ISConcreteIcon *)self _imageForSymbolImageDescriptor:v5];
      goto LABEL_60;
    }

    goto LABEL_23;
  }

  if (![v5 ignoreCache])
  {
    v19 = [(ISConcreteIcon *)self _cachedImageForDescriptor:v5];
    goto LABEL_25;
  }

  if (!v5)
  {
    if (([0 placeholder] & 1) == 0)
    {
LABEL_59:
      v46 = MEMORY[0x1E69A8988];
      v47 = [(ISConcreteIcon *)self _fallbackKey];
      v19 = [v46 _placeholderImageWithImageDescriptor:v4 markAsPlaceholder:1 fallbackTypeID:v47 referenceIcon:self];

      goto LABEL_60;
    }

LABEL_23:
    v19 = 0;
    goto LABEL_60;
  }

  v6 = _ISPrepareISIconSignpostLog();
  v7 = os_signpost_enabled(v6);

  if (v7)
  {
    v52 = v4;
    v8 = [(ISIcon *)self _activeSignpostsForDescriptor:v5];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v64 objects:v70 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v65;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v65 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v64 + 1) + 8 * i);
          if ([v13 unsignedLongLongValue])
          {
            v14 = _ISPrepareISIconSignpostLog();
            v15 = os_signpost_enabled(v14);

            if (v15)
            {
              v16 = _ISPrepareISIconSignpostLog();
              v17 = [v13 unsignedLongLongValue];
              if ((v17 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v18 = v17;
                if (os_signpost_enabled(v16))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_1A77B8000, v16, OS_SIGNPOST_EVENT, v18, "PrepareISIcon", "IGNORING_CACHE", buf, 2u);
                }
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v64 objects:v70 count:16];
      }

      while (v10);
    }

    v19 = 0;
    v4 = v52;
  }

  else
  {
    v19 = 0;
  }

LABEL_25:
  if (([v19 placeholder] & 1) == 0)
  {
    if (v19)
    {
      goto LABEL_60;
    }

    if (v5)
    {
      v33 = _ISPrepareISIconSignpostLog();
      v34 = os_signpost_enabled(v33);

      if (v34)
      {
        v51 = v5;
        v54 = v4;
        v35 = [(ISIcon *)self _activeSignpostsForDescriptor:v5];
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v36 = [v35 countByEnumeratingWithState:&v55 objects:v68 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v56;
          do
          {
            for (j = 0; j != v37; ++j)
            {
              if (*v56 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v55 + 1) + 8 * j);
              if ([v40 unsignedLongLongValue])
              {
                v41 = _ISPrepareISIconSignpostLog();
                v42 = os_signpost_enabled(v41);

                if (v42)
                {
                  v43 = _ISPrepareISIconSignpostLog();
                  v44 = [v40 unsignedLongLongValue];
                  if ((v44 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                  {
                    v45 = v44;
                    if (os_signpost_enabled(v43))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_1A77B8000, v43, OS_SIGNPOST_EVENT, v45, "PrepareISIcon", "RETURNING_PLACEHOLDER", buf, 2u);
                    }
                  }
                }
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v55 objects:v68 count:16];
          }

          while (v37);
        }

        v5 = v51;
        v4 = v54;
      }
    }

    goto LABEL_59;
  }

  if (v5)
  {
    v20 = _ISPrepareISIconSignpostLog();
    v21 = os_signpost_enabled(v20);

    if (v21)
    {
      v50 = v19;
      v53 = v4;
      v22 = [(ISIcon *)self _activeSignpostsForDescriptor:v5];
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v23 = [v22 countByEnumeratingWithState:&v59 objects:v69 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v60;
        do
        {
          for (k = 0; k != v24; ++k)
          {
            if (*v60 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v59 + 1) + 8 * k);
            if ([v27 unsignedLongLongValue])
            {
              v28 = _ISPrepareISIconSignpostLog();
              v29 = os_signpost_enabled(v28);

              if (v29)
              {
                v30 = _ISPrepareISIconSignpostLog();
                v31 = [v27 unsignedLongLongValue];
                if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v32 = v31;
                  if (os_signpost_enabled(v30))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_1A77B8000, v30, OS_SIGNPOST_EVENT, v32, "PrepareISIcon", "RETURNING_STALE_PLACEHOLDER", buf, 2u);
                  }
                }
              }
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v59 objects:v69 count:16];
        }

        while (v24);
      }

      v4 = v53;
      v19 = v50;
    }
  }

LABEL_60:

  v48 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)generateImageWithDescriptor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(ISGenerationRequest);
  v9 = [v6 copy];
  [(ISGenerationRequest *)v8 setImageDescriptor:v9];

  [(ISGenerationRequest *)v8 setIcon:self];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__0;
  v26[4] = __Block_byref_object_dispose__0;
  v27 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __57__ISConcreteIcon_generateImageWithDescriptor_completion___block_invoke;
  v22[3] = &unk_1E77C6968;
  v22[4] = self;
  v10 = v6;
  v23 = v10;
  v25 = v26;
  v11 = v7;
  v24 = v11;
  v12 = MEMORY[0x1AC55B6D0](v22);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__ISConcreteIcon_generateImageWithDescriptor_completion___block_invoke_25;
  v17[3] = &unk_1E77C69B8;
  v21 = v26;
  v17[4] = self;
  v13 = v10;
  v18 = v13;
  v14 = v12;
  v20 = v14;
  v15 = v8;
  v19 = v15;
  v16 = _ISRetryRequest(v17);

  _Block_object_dispose(v26, 8);
}

void __57__ISConcreteIcon_generateImageWithDescriptor_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = _ISDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke_18_cold_1(a1, v3);
    }
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E69A8988]);
    v8 = [v3 data];
    v9 = [v3 uuid];
    v10 = [v3 validationToken];
    v6 = [v7 initWithData:v8 uuid:v9 validationToken:v10];

    if (v6)
    {
      goto LABEL_7;
    }
  }

  v6 = [*(a1 + 32) _placeholderImageForError:*(*(*(a1 + 56) + 8) + 40) descriptor:*(a1 + 40)];
LABEL_7:
  (*(*(a1 + 48) + 16))();
}

void *__57__ISConcreteIcon_generateImageWithDescriptor_completion___block_invoke_25(uint64_t a1)
{
  v2 = *(*(a1 + 64) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = [*(a1 + 32) manager];
  v5 = [v4 connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__ISConcreteIcon_generateImageWithDescriptor_completion___block_invoke_2;
  v13[3] = &unk_1E77C6990;
  v6 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v6;
  v12 = *(a1 + 56);
  v7 = v12;
  v15 = v12;
  v8 = [v5 remoteObjectProxyWithErrorHandler:v13];

  [v8 generateImageWithRequest:*(a1 + 48) reply:*(a1 + 56)];
  v9 = *(*(*(a1 + 64) + 8) + 40);
  v10 = v9;

  return v9;
}

void __57__ISConcreteIcon_generateImageWithDescriptor_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ISDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57__ISConcreteIcon_generateImageWithDescriptor_completion___block_invoke_2_cold_1(a1);
  }

  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(a1 + 48);
  v9 = [[ISGenerationResponse alloc] initWithError:v7];
  (*(v8 + 16))(v8, v9);
}

- (void)getImageForImageDescriptor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ISConcreteIcon *)self imageForDescriptor:v6];
  v9 = v8;
  if ((v8 && ![v8 placeholder] || (-[ISConcreteIcon _imageFromStoreForDescriptor:](self, "_imageFromStoreForDescriptor:", v6), v10 = objc_claimAutoreleasedReturnValue(), v9, (v9 = v10) != 0)) && !objc_msgSend(v9, "placeholder"))
  {
    v7[2](v7, v9);
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__ISConcreteIcon_getImageForImageDescriptor_completion___block_invoke;
    v11[3] = &unk_1E77C69E0;
    v11[4] = self;
    v12 = v6;
    v13 = v7;
    [(ISConcreteIcon *)self generateImageWithDescriptor:v12 completion:v11];
  }
}

void __56__ISConcreteIcon_getImageForImageDescriptor_completion___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v5 = a2;
  v4 = [v3 imageCache];
  [v4 setImage:v5 forDescriptor:a1[5]];

  (*(a1[6] + 16))();
}

- (void)assessValidationToken:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_FAULT, "Invalid validation token data size: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)assessValidationToken:(uint64_t)a1 .cold.8(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_FAULT, "Invalid validation token data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke_2_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5_0(&dword_1A77B8000, v3, v4, "Failed to generate image for %@ - %@. Error: %@");
  v5 = *MEMORY[0x1E69E9840];
}

void __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke_18_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 error];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_4_0(&dword_1A77B8000, v5, v6, "Error returned from iconservicesagent image request: %@ - %@ error: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __57__ISConcreteIcon_generateImageWithDescriptor_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5_0(&dword_1A77B8000, v3, v4, "Failed to generate image with handler for %@ - %@. Error: %@");
  v5 = *MEMORY[0x1E69E9840];
}

@end