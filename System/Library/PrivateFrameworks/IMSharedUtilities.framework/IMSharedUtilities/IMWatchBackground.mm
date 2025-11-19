@interface IMWatchBackground
+ (id)payloadDataFor:(id)a3 luminance:(double)a4 isHighKey:(BOOL)a5 extensionIdentfier:(id)a6;
- (IMWatchBackground)initWithPayloadData:(id)a3;
@end

@implementation IMWatchBackground

- (IMWatchBackground)initWithPayloadData:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = IMWatchBackground;
  v5 = [(IMWatchBackground *)&v21 init];
  if (v5)
  {
    v20 = 0;
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:1 format:0 error:&v20];
    v7 = v20;
    if (v7)
    {
      v8 = v7;

LABEL_10:
      v18 = 0;
      goto LABEL_11;
    }

    v9 = [v6 objectForKeyedSubscript:qword_1EB301070];
    v10 = [v6 objectForKeyedSubscript:qword_1EB301078];
    v11 = [v6 objectForKeyedSubscript:qword_1EB301080];
    v12 = [v6 objectForKeyedSubscript:qword_1EB301088];
    v13 = v12;
    if (!v9 || !v10 || !v12)
    {

      goto LABEL_10;
    }

    backgroundImageData = v5->_backgroundImageData;
    v5->_backgroundImageData = v9;
    v15 = v9;

    [v10 doubleValue];
    v5->_luminance = v16;
    v5->_isHighKey = [v11 BOOLValue];
    extensionIdentifier = v5->_extensionIdentifier;
    v5->_extensionIdentifier = v13;
  }

  v18 = v5;
LABEL_11:

  return v18;
}

+ (id)payloadDataFor:(id)a3 luminance:(double)a4 isHighKey:(BOOL)a5 extensionIdentfier:(id)a6
{
  v7 = a5;
  v20[4] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  v20[0] = v9;
  v19[0] = qword_1EB301070;
  v19[1] = qword_1EB301078;
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v20[1] = v11;
  v19[2] = qword_1EB301080;
  v12 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  v19[3] = qword_1EB301088;
  v20[2] = v12;
  v20[3] = v10;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];

  v18 = 0;
  v14 = [MEMORY[0x1E696AE40] dataWithPropertyList:v13 format:200 options:0 error:&v18];
  v15 = v14;
  v16 = 0;
  if (!v18)
  {
    v16 = v14;
  }

  return v16;
}

@end