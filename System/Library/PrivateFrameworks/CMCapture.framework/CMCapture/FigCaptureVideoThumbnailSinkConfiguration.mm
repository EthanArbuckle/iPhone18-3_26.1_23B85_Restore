@interface FigCaptureVideoThumbnailSinkConfiguration
- (CGSize)thumbnailSize;
- (FigCaptureVideoThumbnailSinkConfiguration)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (void)dealloc;
@end

@implementation FigCaptureVideoThumbnailSinkConfiguration

- (CGSize)thumbnailSize
{
  width = self->_thumbnailSize.width;
  height = self->_thumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)copyXPCEncoding
{
  v11.receiver = self;
  v11.super_class = FigCaptureVideoThumbnailSinkConfiguration;
  copyXPCEncoding = [(FigCaptureSinkConfiguration *)&v11 copyXPCEncoding];
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(self->_thumbnailSize);
  FigXPCMessageSetCFDictionary();
  if ([(NSArray *)self->_smartStyles count])
  {
    smartStyles = self->_smartStyles;
    v6 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v6 encodeObject:smartStyles forKey:*MEMORY[0x1E696A508]];
    encodedData = [v6 encodedData];

    v8 = "smartStyles";
  }

  else
  {
    if (![(NSArray *)self->_filters count])
    {
      goto LABEL_6;
    }

    encodedData = csr_serializeObjectUsingNSSecureCoding(self->_filters);
    v8 = "filters";
  }

  v9 = xpc_data_create([encodedData bytes], objc_msgSend(encodedData, "length"));
  xpc_dictionary_set_value(copyXPCEncoding, v8, v9);
  xpc_release(v9);
LABEL_6:
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  return copyXPCEncoding;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureVideoThumbnailSinkConfiguration;
  [(FigCaptureSinkConfiguration *)&v3 dealloc];
}

- (FigCaptureVideoThumbnailSinkConfiguration)initWithXPCEncoding:(id)encoding
{
  v20.receiver = self;
  v20.super_class = FigCaptureVideoThumbnailSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v20 initWithXPCEncoding:?];
  if (v4)
  {
    length[1] = 0;
    FigXPCMessageCopyCFDictionary();
    CGSizeMakeWithDictionaryRepresentation(0, &v4->_thumbnailSize);
    length[0] = 0;
    data = xpc_dictionary_get_data(encoding, "smartStyles", length);
    if (data)
    {
      v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:data length:length[0] freeWhenDone:0];
      v21 = 0;
      v7 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v6 error:&v21];
      if (v21)
      {
        [FigCaptureVideoThumbnailSinkConfiguration initWithXPCEncoding:?];
        v10 = 0;
      }

      else
      {
        v8 = MEMORY[0x1E695DFD8];
        v9 = objc_opt_class();
        v10 = [v7 decodeObjectOfClasses:objc_msgSend(v8 forKey:{"setWithObjects:", v9, objc_opt_class(), 0), *MEMORY[0x1E696A508]}];
        [v7 finishDecoding];
      }

      v11 = v10;
      v12 = 48;
    }

    else
    {
      v21 = 0;
      v13 = xpc_dictionary_get_data(encoding, "filters", &v21);
      if (!v13)
      {
        return v4;
      }

      v14 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v13 length:v21 freeWhenDone:0];
      v15 = MEMORY[0x1E695DFD8];
      v16 = objc_opt_class();
      v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
      v11 = fcsc_deserializeDataUsingNSSecureCoding(v14, v17);
      v12 = 40;
    }

    *(&v4->super.super.isa + v12) = v11;
    if (!v11)
    {

      return 0;
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = FigCaptureVideoThumbnailSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v6 copyWithZone:zone];
  [(FigCaptureVideoThumbnailSinkConfiguration *)self thumbnailSize];
  [v4 setThumbnailSize:?];
  [v4 setFilters:{-[FigCaptureVideoThumbnailSinkConfiguration filters](self, "filters")}];
  [v4 setSmartStyles:{-[FigCaptureVideoThumbnailSinkConfiguration smartStyles](self, "smartStyles")}];
  return v4;
}

- (uint64_t)initWithXPCEncoding:(id *)a1 .cold.1(id *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  [*a1 code];
  return FigSignalErrorAtGM();
}

@end