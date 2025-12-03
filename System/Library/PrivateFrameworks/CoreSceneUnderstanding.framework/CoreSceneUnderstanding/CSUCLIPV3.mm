@interface CSUCLIPV3
+ (BOOL)calculateCosineSimilarity:(float *)similarity ofEmbedding:(id)embedding toEmbedding:(id)toEmbedding error:(id *)error;
- (BOOL)loadResources:(id *)resources;
- (CSUCLIPV3)initWithConfiguration:(id)configuration;
- (void)encodeInputImage:(__CVBuffer *)image completion:(id)completion;
- (void)encodeInputText:(id)text completion:(id)completion;
@end

@implementation CSUCLIPV3

- (CSUCLIPV3)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v32.receiver = self;
  v32.super_class = CSUCLIPV3;
  v6 = [(CSUCLIPV3 *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = [CSUCLIPTextEncoderV3 alloc];
    v13 = objc_msgSend_textEncoderConfiguration(configurationCopy, v9, v10, v11, v12);
    v17 = objc_msgSend_initWithConfiguration_(v8, v14, v13, v15, v16);
    textEncoder = v7->_textEncoder;
    v7->_textEncoder = v17;

    v19 = [CSUCLIPImageEncoderV3 alloc];
    v24 = objc_msgSend_imageEncoderConfiguration(configurationCopy, v20, v21, v22, v23);
    v28 = objc_msgSend_initWithConfiguration_(v19, v25, v24, v26, v27);
    imageEncoder = v7->_imageEncoder;
    v7->_imageEncoder = v28;

    v30 = v7;
  }

  return v7;
}

- (BOOL)loadResources:(id *)resources
{
  Resources = objc_msgSend_loadResources_(self->_textEncoder, a2, resources, v3, v4);
  if (Resources)
  {
    imageEncoder = self->_imageEncoder;

    LOBYTE(Resources) = objc_msgSend_loadResources_(imageEncoder, v8, resources, v9, v10);
  }

  return Resources;
}

- (void)encodeInputImage:(__CVBuffer *)image completion:(id)completion
{
  completionCopy = completion;
  imageEncoder = self->_imageEncoder;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1AC078258;
  v11[3] = &unk_1E7967DE0;
  v11[4] = self;
  v12 = completionCopy;
  v8 = completionCopy;
  objc_msgSend_runOnInputImage_completion_(imageEncoder, v9, image, v11, v10);
}

- (void)encodeInputText:(id)text completion:(id)completion
{
  completionCopy = completion;
  textEncoder = self->_textEncoder;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1AC078450;
  v11[3] = &unk_1E7967E08;
  v11[4] = self;
  v12 = completionCopy;
  v8 = completionCopy;
  objc_msgSend_runOnInputText_completion_(textEncoder, v9, text, v11, v10);
}

+ (BOOL)calculateCosineSimilarity:(float *)similarity ofEmbedding:(id)embedding toEmbedding:(id)toEmbedding error:(id *)error
{
  embeddingCopy = embedding;
  toEmbeddingCopy = toEmbedding;
  v15 = objc_msgSend_revision(embeddingCopy, v11, v12, v13, v14);
  if (v15 == objc_msgSend_revision(toEmbeddingCopy, v16, v17, v18, v19))
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 2143289344;
    v24 = objc_msgSend_buffer(embeddingCopy, v20, v21, v22, v23);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1AC078784;
    v30[3] = &unk_1E7967E58;
    v31 = toEmbeddingCopy;
    v32 = &v35;
    v33 = &v39;
    errorCopy = error;
    objc_msgSend_accessDataUsingBlock_(v24, v25, v30, v26, v27);

    v28 = *(v40 + 24);
    if (v28 == 1)
    {
      *similarity = v36[6];
    }

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
  }

  else if (error)
  {
    objc_msgSend_errorWithCode_message_(CSUError, v20, 8, @"Attempting to compare embeddings in different latent spaces", v23);
    *error = LOBYTE(v28) = 0;
  }

  else
  {
    LOBYTE(v28) = 0;
  }

  return v28;
}

@end