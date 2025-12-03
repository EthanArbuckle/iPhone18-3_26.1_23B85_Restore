@interface DTTapMessage
+ (void)initialize;
- (DTTapMessage)init;
- (DTTapMessage)initWithCoder:(id)coder;
- (int)kind;
@end

@implementation DTTapMessage

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = MEMORY[0x277CBEB98];
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = [v2 setWithObjects:{v3, v4, v5, v6, objc_opt_class(), 0}];
    v8 = qword_27EE842D8;
    qword_27EE842D8 = v7;
  }
}

- (DTTapMessage)init
{
  v6.receiver = self;
  v6.super_class = DTTapMessage;
  v2 = [(DTTapMessage *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    plist = v2->_plist;
    v2->_plist = v3;

    [(DTTapMessage *)v2 setKind:0xFFFFFFFFLL];
  }

  return v2;
}

- (DTTapMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = DTTapMessage;
  v5 = [(DTTapMessage *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClasses:qword_27EE842D8 forKey:@"DTTapMessagePlist"];
    if (!v6)
    {
      v6 = [coderCopy decodeObjectOfClasses:qword_27EE842D8 forKey:@"$$0"];
    }

    v7 = [v6 mutableCopy];
    plist = v5->_plist;
    v5->_plist = v7;
  }

  return v5;
}

- (int)kind
{
  plist = [(DTTapMessage *)self plist];
  v3 = [plist objectForKey:@"k"];
  intValue = [v3 intValue];

  return intValue;
}

@end