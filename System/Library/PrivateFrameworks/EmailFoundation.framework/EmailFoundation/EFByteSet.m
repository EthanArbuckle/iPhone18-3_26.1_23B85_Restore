@interface EFByteSet
+ (id)asciiWhitespaceSet;
- (EFByteSet)init;
- (EFByteSet)initWithBytes:(const void *)a3 length:(unint64_t)a4;
- (EFByteSet)initWithCString:(const char *)a3;
- (EFByteSet)initWithRange:(_NSRange)a3;
- (id).cxx_construct;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
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

- (EFByteSet)initWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = a3.location + a3.length;
  if (a3.location + a3.length >= 0x101)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = NSStringFromRange(a3);
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

- (EFByteSet)initWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = EFByteSet;
  result = [(EFByteSet *)&v9 init];
  if (result)
  {
    v7 = a4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    do
    {
      v8 = *a3;
      a3 = a3 + 1;
      *(result->_bitString.__first_ + ((v8 >> 3) & 0x18)) |= 1 << v8;
      --a4;
    }

    while (a4);
  }

  return result;
}

- (EFByteSet)init
{
  v3.receiver = self;
  v3.super_class = EFByteSet;
  return [(EFByteSet *)&v3 init];
}

- (EFByteSet)initWithCString:(const char *)a3
{
  v5 = strlen(a3);

  return [(EFByteSet *)self initWithBytes:a3 length:v5];
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 256; ++i)
  {
    if ((*(self->_bitString.__first_ + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02zX", i];
      [v3 addObject:v5];
    }
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = [v3 componentsJoinedByString:{@", "}];
  v9 = [v6 stringWithFormat:@"<%@: %p> {%@}", v7, self, v8];

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
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