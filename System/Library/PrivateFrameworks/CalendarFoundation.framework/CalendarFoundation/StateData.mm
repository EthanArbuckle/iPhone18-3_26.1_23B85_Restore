@interface StateData
- (StateData)init;
- (_NSRange)endRange;
- (_NSRange)startRange;
- (id)description;
@end

@implementation StateData

- (StateData)init
{
  v11.receiver = self;
  v11.super_class = StateData;
  v2 = [(StateData *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    v4 = [MEMORY[0x1E695DF70] array];
    joinMethods = v3->_joinMethods;
    v3->_joinMethods = v4;

    v6 = [MEMORY[0x1E695DF70] array];
    conferenceDetails = v3->_conferenceDetails;
    v3->_conferenceDetails = v6;

    v8 = [MEMORY[0x1E695DF70] array];
    ranges = v3->_ranges;
    v3->_ranges = v8;
  }

  return v3;
}

- (id)description
{
  v16 = MEMORY[0x1E696AEC0];
  v15 = [(StateData *)self state];
  v14 = [(StateData *)self blockTitle];
  v13 = [(StateData *)self conferenceTitle];
  v3 = [(StateData *)self joinMethodTitle];
  v4 = [(StateData *)self joinMethodURL];
  v18.location = [(StateData *)self startRange];
  v5 = NSStringFromRange(v18);
  v19.location = [(StateData *)self endRange];
  v6 = NSStringFromRange(v19);
  v7 = [(StateData *)self joinMethods];
  v8 = [(StateData *)self conferenceDetails];
  v9 = [(StateData *)self ranges];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[StateData joinMethodIsBroadcast](self, "joinMethodIsBroadcast")}];
  v11 = [v16 stringWithFormat:@"ParseData state: %tu, blockTitle: %@, conferenceTitle: %@, joinMethodTitle: %@, joinMethodURL: %@, startRange: %@, endRange: %@, joinMethods: %@, conferenceDetails: %@, ranges: %@, joinMethodIsBroadcast: %@", v15, v14, v13, v3, v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (_NSRange)startRange
{
  length = self->_startRange.length;
  location = self->_startRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)endRange
{
  length = self->_endRange.length;
  location = self->_endRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end