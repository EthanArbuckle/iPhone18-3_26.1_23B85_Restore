@interface GCFLocalizedString
+ (id)allocWithZone:(_NSZone *)zone;
- (GCFLocalizedString)init;
- (GCFLocalizedString)initWithBytesNoCopy:(void *)copy length:(unint64_t)length encoding:(unint64_t)encoding deallocator:(id)deallocator;
- (GCFLocalizedString)initWithCharacters:(const unsigned __int16 *)characters length:(unint64_t)length;
- (GCFLocalizedString)initWithCharactersNoCopy:(unsigned __int16 *)copy length:(unint64_t)length deallocator:(id)deallocator;
- (GCFLocalizedString)initWithCoder:(id)coder;
- (GCFLocalizedString)initWithFormat:(id)format arg:(id)arg;
- (GCFLocalizedString)initWithFormat:(id)format locale:(id)locale arguments:(char *)arguments;
- (GCFLocalizedString)initWithKey:(id)key sourceBundle:(id)bundle table:(id)table locale:(id)locale;
- (GCFLocalizedString)initWithString:(id)string;
- (GCFLocalizedString)initWithUTF8String:(const char *)string;
- (GCFLocalizedString)initWithValidatedFormat:(id)format validFormatSpecifiers:(id)specifiers locale:(id)locale arguments:(char *)arguments error:(id *)error;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation GCFLocalizedString

- (unint64_t)length
{
  _realizedString = [(GCFLocalizedString *)self _realizedString];

  return [_realizedString length];
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  _realizedString = [(GCFLocalizedString *)self _realizedString];

  [_realizedString getCharacters:characters range:{location, length}];
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  _realizedString = [(GCFLocalizedString *)self _realizedString];

  return [_realizedString characterAtIndex:index];
}

- (GCFLocalizedString)initWithCoder:(id)coder
{
  v4 = [_GCFLocalizedString alloc];

  return [(_GCFLocalizedString *)v4 initWithCoder:coder];
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    objc_opt_self();
    return &sharedPlaceholderString_PlaceholderString;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___GCFLocalizedString;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

- (GCFLocalizedString)initWithKey:(id)key sourceBundle:(id)bundle table:(id)table locale:(id)locale
{
  v10 = [_GCFLocalizedString alloc];

  return [(_GCFLocalizedString *)v10 initWithKey:key sourceBundle:bundle table:table locale:locale];
}

- (GCFLocalizedString)initWithFormat:(id)format arg:(id)arg
{
  v6 = [_GCFFormattedLocalizedString alloc];

  return [(_GCFFormattedLocalizedString *)v6 initWithFormat:format arg:arg];
}

- (GCFLocalizedString)init
{
  v2 = [_GCFLocalizedString alloc];

  return [(_GCFLocalizedString *)v2 initWithKey:&stru_1F4E1BE30 sourceBundle:0 table:0 locale:0];
}

- (GCFLocalizedString)initWithString:(id)string
{
  v4 = [_GCFLocalizedString alloc];

  return [(_GCFLocalizedString *)v4 initWithKey:string sourceBundle:0 table:0 locale:0];
}

- (GCFLocalizedString)initWithCharactersNoCopy:(unsigned __int16 *)copy length:(unint64_t)length deallocator:(id)deallocator
{
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharactersNoCopy:copy length:length deallocator:deallocator];
  v9 = [[_GCFLocalizedString alloc] initWithKey:v8 sourceBundle:0 table:0 locale:0];

  return &v9->super;
}

- (GCFLocalizedString)initWithCharacters:(const unsigned __int16 *)characters length:(unint64_t)length
{
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:characters length:length];
  v7 = [[_GCFLocalizedString alloc] initWithKey:v6 sourceBundle:0 table:0 locale:0];

  return &v7->super;
}

- (GCFLocalizedString)initWithUTF8String:(const char *)string
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
  v5 = [[_GCFLocalizedString alloc] initWithKey:v4 sourceBundle:0 table:0 locale:0];

  return &v5->super;
}

- (GCFLocalizedString)initWithFormat:(id)format locale:(id)locale arguments:(char *)arguments
{
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:format locale:locale arguments:arguments];
  v9 = [[_GCFLocalizedString alloc] initWithKey:v8 sourceBundle:0 table:0 locale:locale];

  return &v9->super;
}

- (GCFLocalizedString)initWithValidatedFormat:(id)format validFormatSpecifiers:(id)specifiers locale:(id)locale arguments:(char *)arguments error:(id *)error
{
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithValidatedFormat:format validFormatSpecifiers:specifiers locale:locale arguments:arguments error:error];
  v13 = [[_GCFLocalizedString alloc] initWithKey:v12 sourceBundle:0 table:0 locale:locale];

  return &v13->super;
}

- (GCFLocalizedString)initWithBytesNoCopy:(void *)copy length:(unint64_t)length encoding:(unint64_t)encoding deallocator:(id)deallocator
{
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:copy length:length encoding:encoding deallocator:deallocator];
  v11 = [[_GCFLocalizedString alloc] initWithKey:v10 sourceBundle:0 table:0 locale:0];

  return &v11->super;
}

@end