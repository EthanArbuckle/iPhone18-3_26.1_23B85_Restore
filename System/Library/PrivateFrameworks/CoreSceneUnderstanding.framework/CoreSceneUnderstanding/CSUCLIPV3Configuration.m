@interface CSUCLIPV3Configuration
+ (id)CLIPV3ConfigurationForRevision:(int64_t)a3 error:(id *)a4;
+ (id)availableRevisions;
+ (int64_t)_resolvedRevision:(int64_t)a3;
- (CSUCLIPV3Configuration)initWithRevision:(int64_t)a3 textEncoderConfiguration:(id)a4 imageEncoderConfiguration:(id)a5 embeddingRevision:(int64_t)a6 textEmbeddingType:(int64_t)a7;
@end

@implementation CSUCLIPV3Configuration

+ (int64_t)_resolvedRevision:(int64_t)a3
{
  if (a3 == -1)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

- (CSUCLIPV3Configuration)initWithRevision:(int64_t)a3 textEncoderConfiguration:(id)a4 imageEncoderConfiguration:(id)a5 embeddingRevision:(int64_t)a6 textEmbeddingType:(int64_t)a7
{
  v13 = a4;
  v14 = a5;
  v19.receiver = self;
  v19.super_class = CSUCLIPV3Configuration;
  v15 = [(CSUCLIPV3Configuration *)&v19 init];
  v16 = v15;
  if (v15)
  {
    v15->_revision = a3;
    objc_storeStrong(&v15->_textEncoderConfiguration, a4);
    objc_storeStrong(&v16->_imageEncoderConfiguration, a5);
    v16->_embeddingRevision = a6;
    v16->_textEmbeddingType = a7;
    v17 = v16;
  }

  return v16;
}

+ (id)CLIPV3ConfigurationForRevision:(int64_t)a3 error:(id *)a4
{
  if (objc_msgSend__resolvedRevision_(CSUCLIPV3Configuration, a2, a3, a4, v4) != 1)
  {
    if (!a4)
    {
      v16 = 0;
      goto LABEL_12;
    }

    v17 = MEMORY[0x1E696AEC0];
    v12 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v7, a3, v8, v9);
    v13 = objc_msgSend_stringWithFormat_(v17, v18, @"Unsupported CLIPV3 revision %@", v19, v20, v12);
    objc_msgSend_errorForUnsupportedRevision_(CSUError, v21, v13, v22, v23);
    *a4 = v16 = 0;
    goto LABEL_10;
  }

  v12 = objc_msgSend_CLIPTextEncoderV3ConfigurationForRevision_error_(CSUCLIPTextEncoderV3Configuration, v7, 1, a4, v9);
  if (v12)
  {
    v13 = objc_msgSend_CLIPImageEncoderV3ConfigurationForRevision_error_(CSUCLIPImageEncoderV3Configuration, v10, 1, a4, v11);
    if (v13)
    {
      v14 = [CSUCLIPV3Configuration alloc];
      v16 = objc_msgSend_initWithRevision_textEncoderConfiguration_imageEncoderConfiguration_embeddingRevision_textEmbeddingType_(v14, v15, 1, v12, v13, 1, 2);
    }

    else
    {
      v16 = 0;
    }

LABEL_10:

    goto LABEL_11;
  }

  v16 = 0;
LABEL_11:

LABEL_12:

  return v16;
}

+ (id)availableRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 1, v4, v5);

  return v2;
}

@end