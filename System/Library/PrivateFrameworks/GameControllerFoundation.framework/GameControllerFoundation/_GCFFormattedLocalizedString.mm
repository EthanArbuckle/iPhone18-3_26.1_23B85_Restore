@interface _GCFFormattedLocalizedString
- (_GCFFormattedLocalizedString)initWithCoder:(id)a3;
- (_GCFFormattedLocalizedString)initWithFormat:(id)a3 arg:(id)a4;
- (id)_realizedString;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _GCFFormattedLocalizedString

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _GCFFormattedLocalizedString;
  [(_GCFFormattedLocalizedString *)&v3 dealloc];
}

- (_GCFFormattedLocalizedString)initWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"format"];
    v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"arg"];
  }

  else
  {
    v5 = [a3 decodeObject];
    v6 = [a3 decodeObject];
  }

  v7 = v6;
  self->_format = [v5 copy];
  self->_arg = [v7 copy];
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [a3 allowsKeyedCoding];
  format = self->_format;
  if (v5)
  {
    [a3 encodeObject:format forKey:@"format"];
    arg = self->_arg;

    [a3 encodeObject:arg forKey:@"arg"];
  }

  else
  {
    [a3 encodeObject:format];
    v8 = self->_arg;

    [a3 encodeObject:v8];
  }
}

- (id)_realizedString
{
  realizedString = self->__realizedString;
  if (!realizedString)
  {
    objc_sync_enter(self);
    realizedString = self->__realizedString;
    if (!realizedString)
    {
      v5 = [(GCFLocalizedString *)self->_format length];
      realizedString = self->_format;
      if (v5)
      {
        if ([(NSString *)self->_format gc_countOfOccurrencesOfString:@"%@" options:0]!= 1)
        {
          v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid resolved format string '%@'.", self->_format];
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v6 userInfo:0]);
        }

        if (!self->_arg)
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Missing argument string." userInfo:0]);
        }

        realizedString = [MEMORY[0x1E696AEC0] stringWithFormat:self->_format, self->_arg];
      }

      self->__realizedString = [(GCFLocalizedString *)realizedString copy];
    }

    objc_sync_exit(self);
  }

  return realizedString;
}

- (_GCFFormattedLocalizedString)initWithFormat:(id)a3 arg:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = self;
  self->_format = [a3 copy];
  v5->_arg = [a4 copy];
  return v5;
}

@end