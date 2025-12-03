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
    array = [MEMORY[0x1E695DF70] array];
    joinMethods = v3->_joinMethods;
    v3->_joinMethods = array;

    array2 = [MEMORY[0x1E695DF70] array];
    conferenceDetails = v3->_conferenceDetails;
    v3->_conferenceDetails = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    ranges = v3->_ranges;
    v3->_ranges = array3;
  }

  return v3;
}

- (id)description
{
  v16 = MEMORY[0x1E696AEC0];
  state = [(StateData *)self state];
  blockTitle = [(StateData *)self blockTitle];
  conferenceTitle = [(StateData *)self conferenceTitle];
  joinMethodTitle = [(StateData *)self joinMethodTitle];
  joinMethodURL = [(StateData *)self joinMethodURL];
  v18.location = [(StateData *)self startRange];
  v5 = NSStringFromRange(v18);
  v19.location = [(StateData *)self endRange];
  v6 = NSStringFromRange(v19);
  joinMethods = [(StateData *)self joinMethods];
  conferenceDetails = [(StateData *)self conferenceDetails];
  ranges = [(StateData *)self ranges];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[StateData joinMethodIsBroadcast](self, "joinMethodIsBroadcast")}];
  v11 = [v16 stringWithFormat:@"ParseData state: %tu, blockTitle: %@, conferenceTitle: %@, joinMethodTitle: %@, joinMethodURL: %@, startRange: %@, endRange: %@, joinMethods: %@, conferenceDetails: %@, ranges: %@, joinMethodIsBroadcast: %@", state, blockTitle, conferenceTitle, joinMethodTitle, joinMethodURL, v5, v6, joinMethods, conferenceDetails, ranges, v10];

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