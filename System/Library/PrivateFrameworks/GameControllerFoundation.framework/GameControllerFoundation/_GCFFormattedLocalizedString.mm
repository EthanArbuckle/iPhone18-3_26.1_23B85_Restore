@interface _GCFFormattedLocalizedString
- (_GCFFormattedLocalizedString)initWithCoder:(id)coder;
- (_GCFFormattedLocalizedString)initWithFormat:(id)format arg:(id)arg;
- (id)_realizedString;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _GCFFormattedLocalizedString

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _GCFFormattedLocalizedString;
  [(_GCFFormattedLocalizedString *)&v3 dealloc];
}

- (_GCFFormattedLocalizedString)initWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    decodeObject = [coder decodeObjectOfClass:objc_opt_class() forKey:@"format"];
    decodeObject2 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"arg"];
  }

  else
  {
    decodeObject = [coder decodeObject];
    decodeObject2 = [coder decodeObject];
  }

  v7 = decodeObject2;
  self->_format = [decodeObject copy];
  self->_arg = [v7 copy];
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  allowsKeyedCoding = [coder allowsKeyedCoding];
  format = self->_format;
  if (allowsKeyedCoding)
  {
    [coder encodeObject:format forKey:@"format"];
    arg = self->_arg;

    [coder encodeObject:arg forKey:@"arg"];
  }

  else
  {
    [coder encodeObject:format];
    v8 = self->_arg;

    [coder encodeObject:v8];
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

- (_GCFFormattedLocalizedString)initWithFormat:(id)format arg:(id)arg
{
  if (!format)
  {
    return 0;
  }

  selfCopy = self;
  self->_format = [format copy];
  selfCopy->_arg = [arg copy];
  return selfCopy;
}

@end