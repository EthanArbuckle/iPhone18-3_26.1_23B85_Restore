@interface EFByteSet
+ (id)asciiWhitespaceSet;
- (EFByteSet)init;
- (EFByteSet)initWithBytes:(const void *)bytes length:(unint64_t)length;
- (EFByteSet)initWithCString:(const char *)string;
- (EFByteSet)initWithRange:(_NSRange)range;
- (id).cxx_construct;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation EFByteSet

+ (id)asciiWhitespaceSet
{
  if (+[EFByteSet asciiWhitespaceSet]::onceToken != -1)
  {
    +[EFByteSet asciiWhitespaceSet];
  }

  v3 = +[EFByteSet asciiWhitespaceSet]::set;

  return v3;
}

void __31__EFByteSet_asciiWhitespaceSet__block_invoke()
{
  v0 = [[EFByteSet alloc] initWithCString:"\t\n\v\f\r "];
  v1 = +[EFByteSet asciiWhitespaceSet]::set;
  +[EFByteSet asciiWhitespaceSet]::set = v0;
}

- (EFByteSet)initWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = range.location + range.length;
  if (range.location + range.length >= 0x101)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = NSStringFromRange(range);
    [v7 raise:*MEMORY[0x1E695D940] format:{@"range extends beyond {0..255}: (NSRange) %@", v8}];
  }

  v12.receiver = self;
  v12.super_class = EFByteSet;
  result = [(EFByteSet *)&v12 init];
  if (result)
  {
    v10 = location >= v6;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = 256;
    if (location > 0x100)
    {
      v11 = location;
    }

    do
    {
      if (v11 == location)
      {
        std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
      }

      *(result->_bitString.__first_ + ((location >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << location;
      ++location;
      --length;
    }

    while (length);
  }

  return result;
}

- (EFByteSet)initWithBytes:(const void *)bytes length:(unint64_t)length
{
  v9.receiver = self;
  v9.super_class = EFByteSet;
  result = [(EFByteSet *)&v9 init];
  if (result)
  {
    v7 = length == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    do
    {
      v8 = *bytes;
      bytes = bytes + 1;
      *(result->_bitString.__first_ + ((v8 >> 3) & 0x18)) |= 1 << v8;
      --length;
    }

    while (length);
  }

  return result;
}

- (EFByteSet)init
{
  v3.receiver = self;
  v3.super_class = EFByteSet;
  return [(EFByteSet *)&v3 init];
}

- (EFByteSet)initWithCString:(const char *)string
{
  v5 = strlen(string);

  return [(EFByteSet *)self initWithBytes:string length:v5];
}

- (id)description
{
  array = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 256; ++i)
  {
    if ((*(self->_bitString.__first_ + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02zX", i];
      [array addObject:v5];
    }
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = [array componentsJoinedByString:{@", "}];
  v9 = [v6 stringWithFormat:@"<%@: %p> {%@}", v7, self, v8];

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(EFMutableByteSet);
  if (result)
  {
    v5 = *self->_bitString.__first_;
    *(result + 24) = *&self->_bitString.__first_[2];
    *(result + 8) = v5;
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end