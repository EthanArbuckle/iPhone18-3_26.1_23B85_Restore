@interface GCFLocalizedString
+ (id)allocWithZone:(_NSZone *)a3;
- (GCFLocalizedString)init;
- (GCFLocalizedString)initWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 encoding:(unint64_t)a5 deallocator:(id)a6;
- (GCFLocalizedString)initWithCharacters:(const unsigned __int16 *)a3 length:(unint64_t)a4;
- (GCFLocalizedString)initWithCharactersNoCopy:(unsigned __int16 *)a3 length:(unint64_t)a4 deallocator:(id)a5;
- (GCFLocalizedString)initWithCoder:(id)a3;
- (GCFLocalizedString)initWithFormat:(id)a3 arg:(id)a4;
- (GCFLocalizedString)initWithFormat:(id)a3 locale:(id)a4 arguments:(char *)a5;
- (GCFLocalizedString)initWithKey:(id)a3 sourceBundle:(id)a4 table:(id)a5 locale:(id)a6;
- (GCFLocalizedString)initWithString:(id)a3;
- (GCFLocalizedString)initWithUTF8String:(const char *)a3;
- (GCFLocalizedString)initWithValidatedFormat:(id)a3 validFormatSpecifiers:(id)a4 locale:(id)a5 arguments:(char *)a6 error:(id *)a7;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)a3;
- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4;
@end

@implementation GCFLocalizedString

- (unint64_t)length
{
  v2 = [(GCFLocalizedString *)self _realizedString];

  return [v2 length];
}

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(GCFLocalizedString *)self _realizedString];

  [v7 getCharacters:a3 range:{location, length}];
}

- (unsigned)characterAtIndex:(unint64_t)a3
{
  v4 = [(GCFLocalizedString *)self _realizedString];

  return [v4 characterAtIndex:a3];
}

- (GCFLocalizedString)initWithCoder:(id)a3
{
  v4 = [_GCFLocalizedString alloc];

  return [(_GCFLocalizedString *)v4 initWithCoder:a3];
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    objc_opt_self();
    return &sharedPlaceholderString_PlaceholderString;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___GCFLocalizedString;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

- (GCFLocalizedString)initWithKey:(id)a3 sourceBundle:(id)a4 table:(id)a5 locale:(id)a6
{
  v10 = [_GCFLocalizedString alloc];

  return [(_GCFLocalizedString *)v10 initWithKey:a3 sourceBundle:a4 table:a5 locale:a6];
}

- (GCFLocalizedString)initWithFormat:(id)a3 arg:(id)a4
{
  v6 = [_GCFFormattedLocalizedString alloc];

  return [(_GCFFormattedLocalizedString *)v6 initWithFormat:a3 arg:a4];
}

- (GCFLocalizedString)init
{
  v2 = [_GCFLocalizedString alloc];

  return [(_GCFLocalizedString *)v2 initWithKey:&stru_1F4E1BE30 sourceBundle:0 table:0 locale:0];
}

- (GCFLocalizedString)initWithString:(id)a3
{
  v4 = [_GCFLocalizedString alloc];

  return [(_GCFLocalizedString *)v4 initWithKey:a3 sourceBundle:0 table:0 locale:0];
}

- (GCFLocalizedString)initWithCharactersNoCopy:(unsigned __int16 *)a3 length:(unint64_t)a4 deallocator:(id)a5
{
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharactersNoCopy:a3 length:a4 deallocator:a5];
  v9 = [[_GCFLocalizedString alloc] initWithKey:v8 sourceBundle:0 table:0 locale:0];

  return &v9->super;
}

- (GCFLocalizedString)initWithCharacters:(const unsigned __int16 *)a3 length:(unint64_t)a4
{
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:a3 length:a4];
  v7 = [[_GCFLocalizedString alloc] initWithKey:v6 sourceBundle:0 table:0 locale:0];

  return &v7->super;
}

- (GCFLocalizedString)initWithUTF8String:(const char *)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3];
  v5 = [[_GCFLocalizedString alloc] initWithKey:v4 sourceBundle:0 table:0 locale:0];

  return &v5->super;
}

- (GCFLocalizedString)initWithFormat:(id)a3 locale:(id)a4 arguments:(char *)a5
{
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a3 locale:a4 arguments:a5];
  v9 = [[_GCFLocalizedString alloc] initWithKey:v8 sourceBundle:0 table:0 locale:a4];

  return &v9->super;
}

- (GCFLocalizedString)initWithValidatedFormat:(id)a3 validFormatSpecifiers:(id)a4 locale:(id)a5 arguments:(char *)a6 error:(id *)a7
{
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithValidatedFormat:a3 validFormatSpecifiers:a4 locale:a5 arguments:a6 error:a7];
  v13 = [[_GCFLocalizedString alloc] initWithKey:v12 sourceBundle:0 table:0 locale:a5];

  return &v13->super;
}

- (GCFLocalizedString)initWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 encoding:(unint64_t)a5 deallocator:(id)a6
{
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:a3 length:a4 encoding:a5 deallocator:a6];
  v11 = [[_GCFLocalizedString alloc] initWithKey:v10 sourceBundle:0 table:0 locale:0];

  return &v11->super;
}

@end