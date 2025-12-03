@interface ASForwardee
- (void)applyPlaceHolder;
@end

@implementation ASForwardee

- (void)applyPlaceHolder
{
  placeHolder = [(ASAttendee *)self placeHolder];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:5399];
  v5 = [placeHolder objectForKey:v4];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASAttendee *)self setName:v5];
    }
  }

  placeHolder2 = [(ASAttendee *)self placeHolder];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:5400];
  v8 = [placeHolder2 objectForKey:v7];

  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASAttendee *)self setEmail:v8];
    }
  }

  [(ASAttendee *)self setLocalId:0xFFFFFFFFLL];

  [(ASAttendee *)self setPlaceHolder:0];
}

@end