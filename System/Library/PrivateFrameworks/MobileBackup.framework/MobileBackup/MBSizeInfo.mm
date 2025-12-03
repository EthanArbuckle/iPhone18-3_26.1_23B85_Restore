@interface MBSizeInfo
- (MBSizeInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MBSizeInfo

- (MBSizeInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MBSizeInfo;
  v5 = [(MBSizeInfo *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    -[MBSizeInfo setSize:](v5, "setSize:", [v6 unsignedLongLongValue]);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    -[MBSizeInfo setState:](v5, "setState:", [v7 unsignedLongLongValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedLongLong:{-[MBSizeInfo size](self, "size")}];
  [coderCopy encodeObject:v6 forKey:@"size"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MBSizeInfo state](self, "state")}];
  [coderCopy encodeObject:v7 forKey:@"state"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MBSizeInfo);
  [(MBSizeInfo *)v4 setSize:[(MBSizeInfo *)self size]];
  [(MBSizeInfo *)v4 setState:[(MBSizeInfo *)self state]];
  return v4;
}

@end