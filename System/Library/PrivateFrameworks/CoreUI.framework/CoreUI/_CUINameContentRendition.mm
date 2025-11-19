@interface _CUINameContentRendition
- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4;
- (void)dealloc;
@end

@implementation _CUINameContentRendition

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUINameContentRendition;
  [(CUIThemeRendition *)&v3 dealloc];
}

- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4
{
  v14.receiver = self;
  v14.super_class = _CUINameContentRendition;
  v5 = [(CUIThemeRendition *)&v14 _initWithCSIHeader:a3 version:*&a4];
  var10 = a3->var10;
  if (var10)
  {
    v7 = (&a3->var11.var1[a3->var11.var0 + 1] + var10);
    v8 = &a3->var11.var1[a3->var11.var0 + 1];
    do
    {
      if (*v8 == 1013)
      {
        v9 = [[NSMutableArray alloc] initWithCapacity:v8[2]];
        if (v8[2])
        {
          v10 = 0;
          v11 = v8 + 4;
          do
          {
            v12 = [[NSString alloc] initWithBytes:v11 + 1 length:*v11 encoding:4];
            [v9 addObject:v12];

            v11 = (v11 + *v11 + 4);
            ++v10;
          }

          while (v10 < v8[2]);
        }

        v5[27] = v9;
      }

      v8 = (v8 + v8[1] + 8);
    }

    while (v8 < v7);
  }

  return v5;
}

@end