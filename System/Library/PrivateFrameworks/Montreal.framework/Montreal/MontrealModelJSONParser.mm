@interface MontrealModelJSONParser
- (MontrealModelJSONParser)initWithURL:(id)l;
- (id)createJSONFromFile:(id)file;
@end

@implementation MontrealModelJSONParser

- (MontrealModelJSONParser)initWithURL:(id)l
{
  lCopy = l;
  v17.receiver = self;
  v17.super_class = MontrealModelJSONParser;
  v8 = [(MontrealModelJSONParser *)&v17 init];
  if (v8)
  {
    v9 = objc_msgSend_path(lCopy, v5, v6, v7);
    v10 = *(v8 + 1);
    *(v8 + 1) = v9;

    v11 = [MontrealNNModelNetwork alloc];
    v14 = objc_msgSend_initWithJSONDir_(v11, v12, *(v8 + 1), v13);
    v15 = *(v8 + 2);
    *(v8 + 2) = v14;
  }

  return v8;
}

- (id)createJSONFromFile:(id)file
{
  v4 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], a2, file, v3);
  v6 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v5, v4, 0, 0);

  return v6;
}

@end