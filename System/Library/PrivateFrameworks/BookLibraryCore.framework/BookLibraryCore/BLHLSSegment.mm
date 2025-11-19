@interface BLHLSSegment
- (BLHLSSegment)initWithURL:(id)a3 duration:(double)a4 map:(id)a5 key:(id)a6;
- (id)description;
@end

@implementation BLHLSSegment

- (BLHLSSegment)initWithURL:(id)a3 duration:(double)a4 map:(id)a5 key:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = BLHLSSegment;
  v14 = [(BLHLSSegment *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_url, a3);
    v15->_duration = a4;
    objc_storeStrong(&v15->_map, a5);
    objc_storeStrong(&v15->_key, a6);
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BLHLSSegment *)self url];
  v5 = MEMORY[0x277CCABB0];
  [(BLHLSSegment *)self duration];
  v6 = [v5 numberWithDouble:?];
  v7 = [(BLHLSSegment *)self map];
  if (v7)
  {
    v8 = @" Map: ";
  }

  else
  {
    v8 = &stru_2853E2EC8;
  }

  v9 = [(BLHLSSegment *)self map];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_2853E2EC8;
  }

  v12 = [v3 stringWithFormat:@"%@ (%@s)%@%@", v4, v6, v8, v11];

  return v12;
}

@end