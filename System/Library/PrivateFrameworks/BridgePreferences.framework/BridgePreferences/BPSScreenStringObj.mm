@interface BPSScreenStringObj
+ (id)screenStringsWithArray:(id)array;
- (BPSScreenStringObj)initWithArray:(id)array;
@end

@implementation BPSScreenStringObj

+ (id)screenStringsWithArray:(id)array
{
  arrayCopy = array;
  v4 = [[BPSScreenStringObj alloc] initWithArray:arrayCopy];

  return v4;
}

- (BPSScreenStringObj)initWithArray:(id)array
{
  arrayCopy = array;
  v27.receiver = self;
  v27.super_class = BPSScreenStringObj;
  v5 = [(BPSScreenStringObj *)&v27 init];
  if (v5)
  {
    if ([arrayCopy count])
    {
      v6 = [arrayCopy objectAtIndexedSubscript:0];
      compact = v5->_compact;
      v5->_compact = v6;
    }

    if ([arrayCopy count] >= 2)
    {
      v8 = [arrayCopy objectAtIndexedSubscript:1];
      regular = v5->_regular;
      v5->_regular = v8;
    }

    if ([arrayCopy count] >= 3)
    {
      v10 = [arrayCopy objectAtIndexedSubscript:2];
      size394h = v5->_size394h;
      v5->_size394h = v10;
    }

    if ([arrayCopy count] >= 4)
    {
      v12 = [arrayCopy objectAtIndexedSubscript:3];
      size448h = v5->_size448h;
      v5->_size448h = v12;
    }

    if ([arrayCopy count] >= 5)
    {
      v14 = [arrayCopy objectAtIndexedSubscript:4];
      size430h = v5->_size430h;
      v5->_size430h = v14;
    }

    if ([arrayCopy count] >= 6)
    {
      v16 = [arrayCopy objectAtIndexedSubscript:5];
      size484h = v5->_size484h;
      v5->_size484h = v16;
    }

    if ([arrayCopy count] >= 7)
    {
      v18 = [arrayCopy objectAtIndexedSubscript:6];
      size502h = v5->_size502h;
      v5->_size502h = v18;
    }

    if ([arrayCopy count] >= 8)
    {
      v20 = [arrayCopy objectAtIndexedSubscript:7];
      size446h = v5->_size446h;
      v5->_size446h = v20;
    }

    if ([arrayCopy count] >= 9)
    {
      v22 = [arrayCopy objectAtIndexedSubscript:8];
      size496h = v5->_size496h;
      v5->_size496h = v22;
    }

    if ([arrayCopy count] >= 0xA)
    {
      v24 = [arrayCopy objectAtIndexedSubscript:9];
      size514h = v5->_size514h;
      v5->_size514h = v24;
    }
  }

  return v5;
}

@end