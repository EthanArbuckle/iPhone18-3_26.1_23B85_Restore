@interface BPSScreenStringObj
+ (id)screenStringsWithArray:(id)a3;
- (BPSScreenStringObj)initWithArray:(id)a3;
@end

@implementation BPSScreenStringObj

+ (id)screenStringsWithArray:(id)a3
{
  v3 = a3;
  v4 = [[BPSScreenStringObj alloc] initWithArray:v3];

  return v4;
}

- (BPSScreenStringObj)initWithArray:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = BPSScreenStringObj;
  v5 = [(BPSScreenStringObj *)&v27 init];
  if (v5)
  {
    if ([v4 count])
    {
      v6 = [v4 objectAtIndexedSubscript:0];
      compact = v5->_compact;
      v5->_compact = v6;
    }

    if ([v4 count] >= 2)
    {
      v8 = [v4 objectAtIndexedSubscript:1];
      regular = v5->_regular;
      v5->_regular = v8;
    }

    if ([v4 count] >= 3)
    {
      v10 = [v4 objectAtIndexedSubscript:2];
      size394h = v5->_size394h;
      v5->_size394h = v10;
    }

    if ([v4 count] >= 4)
    {
      v12 = [v4 objectAtIndexedSubscript:3];
      size448h = v5->_size448h;
      v5->_size448h = v12;
    }

    if ([v4 count] >= 5)
    {
      v14 = [v4 objectAtIndexedSubscript:4];
      size430h = v5->_size430h;
      v5->_size430h = v14;
    }

    if ([v4 count] >= 6)
    {
      v16 = [v4 objectAtIndexedSubscript:5];
      size484h = v5->_size484h;
      v5->_size484h = v16;
    }

    if ([v4 count] >= 7)
    {
      v18 = [v4 objectAtIndexedSubscript:6];
      size502h = v5->_size502h;
      v5->_size502h = v18;
    }

    if ([v4 count] >= 8)
    {
      v20 = [v4 objectAtIndexedSubscript:7];
      size446h = v5->_size446h;
      v5->_size446h = v20;
    }

    if ([v4 count] >= 9)
    {
      v22 = [v4 objectAtIndexedSubscript:8];
      size496h = v5->_size496h;
      v5->_size496h = v22;
    }

    if ([v4 count] >= 0xA)
    {
      v24 = [v4 objectAtIndexedSubscript:9];
      size514h = v5->_size514h;
      v5->_size514h = v24;
    }
  }

  return v5;
}

@end