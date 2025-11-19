@interface MRColorComponents
- (BOOL)isEqual:(id)a3;
- (MRColorComponents)initWithProtobuf:(id)a3;
- (_MRColorProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MRColorComponents

- (MRColorComponents)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12.receiver = self;
    v12.super_class = MRColorComponents;
    v5 = [(MRColorComponents *)&v12 init];
    if (v5)
    {
      [v4 red];
      v5->_red = v6;
      [v4 green];
      v5->_green = v7;
      [v4 blue];
      v5->_blue = v8;
      [v4 alpha];
      v5->_alpha = v9;
    }

    self = v5;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_MRColorProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRColorProtobuf);
  [(MRColorComponents *)self red];
  [(_MRColorProtobuf *)v3 setRed:?];
  [(MRColorComponents *)self green];
  [(_MRColorProtobuf *)v3 setGreen:?];
  [(MRColorComponents *)self blue];
  [(_MRColorProtobuf *)v3 setBlue:?];
  [(MRColorComponents *)self alpha];
  [(_MRColorProtobuf *)v3 setAlpha:?];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(MRColorComponents *)self red];
  v6 = v5;
  [(MRColorComponents *)self green];
  v8 = v7;
  [(MRColorComponents *)self blue];
  v10 = v9;
  [(MRColorComponents *)self alpha];
  return [v3 stringWithFormat:@"<%@: %p red = %f, green = %f, blue = %f, alpha = %f>", v4, self, *&v6, *&v8, *&v10, v11];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(MRColorComponents *)v5 red];
      v7 = v6;
      [(MRColorComponents *)self red];
      if (vabds_f32(v7, v8) <= 0.00000011921 && ([(MRColorComponents *)v5 green], v10 = v9, [(MRColorComponents *)self green], vabds_f32(v10, v11) <= 0.00000011921) && ([(MRColorComponents *)v5 blue], v13 = v12, [(MRColorComponents *)self blue], vabds_f32(v13, v14) <= 0.00000011921))
      {
        [(MRColorComponents *)v5 alpha];
        v18 = v17;
        [(MRColorComponents *)self alpha];
        v15 = vabds_f32(v18, v19) <= 0.00000011921;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(MRColorComponents *)self red];
  [v4 setRed:?];
  [(MRColorComponents *)self green];
  [v4 setGreen:?];
  [(MRColorComponents *)self blue];
  [v4 setBlue:?];
  [(MRColorComponents *)self alpha];
  [v4 setAlpha:?];
  return v4;
}

@end