@interface CNUIBackgroundColors
- (CNUIBackgroundColors)init;
- (CNUIBackgroundColors)initWithData:(id)a3;
- (NSData)data;
@end

@implementation CNUIBackgroundColors

- (CNUIBackgroundColors)init
{
  v7.receiver = self;
  v7.super_class = CNUIBackgroundColors;
  v2 = [(CNUIBackgroundColors *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E695E0F0];
    [(CNUIBackgroundColors *)v2 setContactImage:MEMORY[0x1E695E0F0]];
    [(CNUIBackgroundColors *)v3 setContactPoster:v4];
    v5 = v3;
  }

  return v3;
}

- (CNUIBackgroundColors)initWithData:(id)a3
{
  v4 = a3;
  v5 = [(CNUIBackgroundColors *)self init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
      if (v7)
      {
        v8 = (*(*MEMORY[0x1E6996598] + 16))();
        v9 = v8;
        if (v8)
        {
          v10 = [v8 objectForKeyedSubscript:@"contactImage"];
          v11 = [CNUIColorSerialization colorsFromDictionaries:v10];
          v12 = v11;
          v13 = MEMORY[0x1E695E0F0];
          if (v11)
          {
            v14 = v11;
          }

          else
          {
            v14 = MEMORY[0x1E695E0F0];
          }

          [(CNUIBackgroundColors *)v6 setContactImage:v14];

          v15 = [v9 objectForKeyedSubscript:@"contactPoster"];
          v16 = [CNUIColorSerialization colorsFromDictionaries:v15];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = v13;
          }

          [(CNUIBackgroundColors *)v6 setContactPoster:v18];
        }

        else
        {
          v22 = +[CNUICoreLogProvider color_os_log];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [CNUIBackgroundColors initWithData:];
          }
        }

        v23 = v6;
      }

      else
      {
        v20 = +[CNUICoreLogProvider color_os_log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [CNUIBackgroundColors initWithData:];
        }

        v21 = v6;
      }
    }

    else
    {
      v19 = v5;
    }
  }

  return v6;
}

- (NSData)data
{
  v3 = *MEMORY[0x1E6996530];
  v4 = [(CNUIBackgroundColors *)self contactImage];
  v5 = (*(v3 + 16))(v3, v4);

  v6 = [(CNUIBackgroundColors *)self contactPoster];
  v7 = (*(v3 + 16))(v3, v6);

  if (v5 && (v7 & 1) != 0)
  {
    v8 = 0;
    goto LABEL_17;
  }

  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  if ((v5 & 1) == 0)
  {
    v10 = [(CNUIBackgroundColors *)self contactImage];
    v11 = [CNUIColorSerialization dictionariesForColors:v10];

    [v9 setObject:v11 forKeyedSubscript:@"contactImage"];
  }

  if ((v7 & 1) == 0)
  {
    v12 = [(CNUIBackgroundColors *)self contactPoster];
    v13 = [CNUIColorSerialization dictionariesForColors:v12];

    [v9 setObject:v13 forKeyedSubscript:@"contactPoster"];
  }

  v14 = (*(*MEMORY[0x1E6996578] + 16))();
  v15 = v14;
  if (!v14)
  {
    v16 = +[CNUICoreLogProvider color_os_log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CNUIBackgroundColors data];
    }

    v8 = 0;
    goto LABEL_15;
  }

  v8 = [v14 dataUsingEncoding:4];
  if (!v8)
  {
    v16 = +[CNUICoreLogProvider color_os_log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CNUIBackgroundColors data];
    }

LABEL_15:
  }

LABEL_17:

  return v8;
}

@end