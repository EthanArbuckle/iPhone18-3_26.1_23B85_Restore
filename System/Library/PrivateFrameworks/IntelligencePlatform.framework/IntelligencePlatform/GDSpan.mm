@interface GDSpan
- (GDSpan)initWithCoder:(id)a3;
- (GDSpan)initWithText:(id)a3 range:(_NSRange)a4;
- (GDSpan)initWithText:(id)a3 start:(int64_t)a4 end:(int64_t)a5;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDSpan

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)description
{
  v3 = [(GDSpan *)self range];
  [(GDSpan *)self range];
  v5 = v4 + v3;
  v6 = MEMORY[0x1E696AEC0];
  v7 = [(GDSpan *)self text];
  v8 = [(GDSpan *)self text];
  v9 = [(GDSpan *)self range];
  v11 = [v8 substringWithRange:{v9, v10}];
  v12 = [v6 stringWithFormat:@"<GDSpan: text: %@, range: %@ [%tu, %tu>"], v7, v11, -[GDSpan range](self, "range"), v5);

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  text = self->_text;
  location = self->_range.location;
  length = self->_range.length;

  return [v4 initWithText:text range:{location, length}];
}

- (GDSpan)initWithCoder:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_text);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_range);
    v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

    if (v10)
    {
      v11 = [v10 rangeValue];
      self = [(GDSpan *)self initWithText:v7 range:v11, v12];
      v13 = self;
LABEL_11:

      goto LABEL_12;
    }

    v15 = [v4 error];

    if (!v15)
    {
      v16 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v24 = @"GDSpan range is nil";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v18 = [v16 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v17];
      [v4 failWithError:v18];
    }

    v10 = 0;
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v14 = [v4 error];

  if (!v14)
  {
    v19 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26[0] = @"GDSpan text is nil";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v20 = [v19 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v10];
    [v4 failWithError:v20];

    goto LABEL_10;
  }

  v13 = 0;
LABEL_12:

  v21 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = a3;
  v6 = NSStringFromSelector(sel_text);
  [v5 encodeObject:text forKey:v6];

  v8 = [MEMORY[0x1E696B098] valueWithRange:{self->_range.location, self->_range.length}];
  v7 = NSStringFromSelector(sel_range);
  [v5 encodeObject:v8 forKey:v7];
}

- (GDSpan)initWithText:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v12.receiver = self;
  v12.super_class = GDSpan;
  v8 = [(GDSpan *)&v12 init];
  if (v8)
  {
    v9 = [v7 copy];
    text = v8->_text;
    v8->_text = v9;

    v8->_range.location = location;
    v8->_range.length = length;
  }

  return v8;
}

- (GDSpan)initWithText:(id)a3 start:(int64_t)a4 end:(int64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = GDSpan;
  v9 = [(GDSpan *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    text = v9->_text;
    v9->_text = v10;

    v9->_range.location = a4;
    v9->_range.length = a5 - a4;
  }

  return v9;
}

@end