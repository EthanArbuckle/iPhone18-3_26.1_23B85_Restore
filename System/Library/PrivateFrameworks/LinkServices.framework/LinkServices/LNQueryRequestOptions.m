@interface LNQueryRequestOptions
- (BOOL)isEqual:(id)a3;
- (LNQueryRequestOptions)init;
- (LNQueryRequestOptions)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNQueryRequestOptions

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(LNQueryRequestOptions *)self convertArrayResultToAsyncSequence];
        if (v7 != [(LNQueryRequestOptions *)v6 convertArrayResultToAsyncSequence])
        {
          v8 = 0;
LABEL_16:

          goto LABEL_17;
        }

        v10 = [(LNQueryRequestOptions *)self exportConfiguration];
        v11 = [(LNQueryRequestOptions *)v6 exportConfiguration];
        v9 = v10;
        v12 = v11;
        v13 = v12;
        if (v9 == v12)
        {
          v8 = 1;
        }

        else
        {
          v8 = 0;
          if (v9 && v12)
          {
            v8 = [(LNQueryRequestOptions *)v9 isEqual:v12];
          }
        }
      }

      else
      {
        v8 = 0;
        v9 = v6;
        v6 = 0;
      }
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    goto LABEL_16;
  }

  v8 = 1;
LABEL_17:

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([(LNQueryRequestOptions *)self convertArrayResultToAsyncSequence])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(LNQueryRequestOptions *)self exportConfiguration];
  v8 = [v3 stringWithFormat:@"<%@ convertArrayResultToAsyncSequence: %@, exportConfiguration: %@>", v5, v6, v7];

  return v8;
}

- (LNQueryRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"convertArrayResultToAsyncSequence"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"exportConfiguration"];

  v7 = [(LNQueryRequestOptions *)self init];
  v8 = v7;
  if (v7)
  {
    [(LNQueryRequestOptions *)v7 setConvertArrayResultToAsyncSequence:v5];
    [(LNQueryRequestOptions *)v8 setExportConfiguration:v6];
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[LNQueryRequestOptions convertArrayResultToAsyncSequence](self forKey:{"convertArrayResultToAsyncSequence"), @"convertArrayResultToAsyncSequence"}];
  v5 = [(LNQueryRequestOptions *)self exportConfiguration];
  [v4 encodeObject:v5 forKey:@"exportConfiguration"];
}

- (LNQueryRequestOptions)init
{
  v6.receiver = self;
  v6.super_class = LNQueryRequestOptions;
  v2 = [(LNQueryRequestOptions *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_convertArrayResultToAsyncSequence = 0;
    v4 = v2;
  }

  return v3;
}

@end