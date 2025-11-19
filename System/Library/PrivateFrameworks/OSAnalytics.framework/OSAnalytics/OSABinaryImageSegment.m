@interface OSABinaryImageSegment
- (OSABinaryImageSegment)initWithAddress:(unint64_t)a3 size:(unint64_t)a4 for:(unsigned __int8)a5[16];
- (OSABinaryImageSegment)initWithSymbol:(id)a3 source:(int)a4;
- (id)details;
- (id)full_details;
@end

@implementation OSABinaryImageSegment

- (id)full_details
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v14[0] = @"uuid";
  v4 = [(OSASymbolInfo *)self->_symbolInfo get_uuid];
  v15[0] = v4;
  v14[1] = @"base";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[OSASymbolInfo start](self->_symbolInfo, "start")}];
  v15[1] = v5;
  v14[2] = @"source";
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", self->_source];
  v15[2] = v6;
  v14[3] = @"size";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[OSASymbolInfo size](self->_symbolInfo, "size")}];
  v15[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v9 = [v3 initWithDictionary:v8];

  v10 = [(OSASymbolInfo *)self->_symbolInfo name];
  [v9 setObject:v10 forKeyedSubscript:@"name"];

  [v9 setObject:self->_symbolInfo->legacy_arch forKeyedSubscript:@"arch"];
  v11 = [(OSASymbolInfo *)self->_symbolInfo path];
  [v9 setObject:v11 forKeyedSubscript:@"path"];

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (OSABinaryImageSegment)initWithSymbol:(id)a3 source:(int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = OSABinaryImageSegment;
  v8 = [(OSABinaryImageSegment *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_symbolInfo, a3);
    v9->_source = a4;
    v9->_used_index = 0;
  }

  return v9;
}

- (OSABinaryImageSegment)initWithAddress:(unint64_t)a3 size:(unint64_t)a4 for:(unsigned __int8)a5[16]
{
  v6 = [[OSASymbolInfo alloc] initWithAddress:a3 size:a4 for:a5];
  v7 = [(OSABinaryImageSegment *)self initWithSymbol:v6 source:0];

  return v7;
}

- (id)details
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = [(OSASymbolInfo *)self->_symbolInfo get_uuid];
  v9[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[OSASymbolInfo start](self->_symbolInfo, "start")}];
  v9[1] = v4;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", self->_source];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end