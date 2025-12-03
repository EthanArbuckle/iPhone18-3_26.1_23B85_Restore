@interface GDSpan
- (GDSpan)initWithCoder:(id)coder;
- (GDSpan)initWithText:(id)text range:(_NSRange)range;
- (GDSpan)initWithText:(id)text start:(int64_t)start end:(int64_t)end;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
  range = [(GDSpan *)self range];
  [(GDSpan *)self range];
  v5 = v4 + range;
  v6 = MEMORY[0x1E696AEC0];
  text = [(GDSpan *)self text];
  text2 = [(GDSpan *)self text];
  range2 = [(GDSpan *)self range];
  v11 = [text2 substringWithRange:{range2, v10}];
  v12 = [v6 stringWithFormat:@"<GDSpan: text: %@, range: %@ [%tu, %tu>"], text, v11, -[GDSpan range](self, "range"), v5);

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  text = self->_text;
  location = self->_range.location;
  length = self->_range.length;

  return [v4 initWithText:text range:{location, length}];
}

- (GDSpan)initWithCoder:(id)coder
{
  v26[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_text);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_range);
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

    if (v10)
    {
      rangeValue = [v10 rangeValue];
      self = [(GDSpan *)self initWithText:v7 range:rangeValue, v12];
      selfCopy = self;
LABEL_11:

      goto LABEL_12;
    }

    error = [coderCopy error];

    if (!error)
    {
      v16 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v24 = @"GDSpan range is nil";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v18 = [v16 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v17];
      [coderCopy failWithError:v18];
    }

    v10 = 0;
LABEL_10:
    selfCopy = 0;
    goto LABEL_11;
  }

  error2 = [coderCopy error];

  if (!error2)
  {
    v19 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26[0] = @"GDSpan text is nil";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v20 = [v19 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v10];
    [coderCopy failWithError:v20];

    goto LABEL_10;
  }

  selfCopy = 0;
LABEL_12:

  v21 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_text);
  [coderCopy encodeObject:text forKey:v6];

  v8 = [MEMORY[0x1E696B098] valueWithRange:{self->_range.location, self->_range.length}];
  v7 = NSStringFromSelector(sel_range);
  [coderCopy encodeObject:v8 forKey:v7];
}

- (GDSpan)initWithText:(id)text range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  v12.receiver = self;
  v12.super_class = GDSpan;
  v8 = [(GDSpan *)&v12 init];
  if (v8)
  {
    v9 = [textCopy copy];
    text = v8->_text;
    v8->_text = v9;

    v8->_range.location = location;
    v8->_range.length = length;
  }

  return v8;
}

- (GDSpan)initWithText:(id)text start:(int64_t)start end:(int64_t)end
{
  textCopy = text;
  v13.receiver = self;
  v13.super_class = GDSpan;
  v9 = [(GDSpan *)&v13 init];
  if (v9)
  {
    v10 = [textCopy copy];
    text = v9->_text;
    v9->_text = v10;

    v9->_range.location = start;
    v9->_range.length = end - start;
  }

  return v9;
}

@end