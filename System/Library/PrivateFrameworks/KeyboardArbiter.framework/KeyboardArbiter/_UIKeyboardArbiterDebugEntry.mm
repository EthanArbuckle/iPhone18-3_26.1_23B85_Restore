@interface _UIKeyboardArbiterDebugEntry
- (_UIKeyboardArbiterDebugEntry)init;
- (void)enumerateContents:(id)contents;
@end

@implementation _UIKeyboardArbiterDebugEntry

- (_UIKeyboardArbiterDebugEntry)init
{
  v6.receiver = self;
  v6.super_class = _UIKeyboardArbiterDebugEntry;
  v2 = [(_UIKeyboardArbiterDebugEntry *)&v6 init];
  if (v2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    timestamp = v2->_timestamp;
    v2->_timestamp = date;
  }

  return v2;
}

- (void)enumerateContents:(id)contents
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"Timestamp";
  timestamp = self->_timestamp;
  contentsCopy = contents;
  v6 = [(NSDate *)timestamp description];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  (*(contents + 2))(contentsCopy, v7);

  v8 = *MEMORY[0x277D85DE8];
}

@end