@interface MultiLinkableTextView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range;
- (id)action;
- (void)refreshContentsWith:(id)with;
@end

@implementation MultiLinkableTextView

- (id)action
{
  MEMORY[0x1E69E5928](self);
  v8 = sub_1AC38CABC();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v8)
  {
    v14 = v8;
    v15 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = 0;
    v12 = sub_1AC38CD10;
    v13 = &block_descriptor_2;
    v4 = _Block_copy(&aBlock);

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range
{
  selfCopy = self;
  viewCopy = view;
  lCopy = l;
  rangeCopy = range;
  rangeCopy2 = range;
  v13 = sub_1AC3B7204();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](viewCopy);
  v14 = &v8 - v9;
  MEMORY[0x1E69E5928](v6);
  MEMORY[0x1E69E5928](lCopy);
  MEMORY[0x1E69E5928](self);
  sub_1AC3B71F4();
  v18 = sub_1AC38D0B4(viewCopy, v14, rangeCopy2.location, rangeCopy2.length);
  (*(v11 + 8))(v14, v13);
  MEMORY[0x1E69E5920](lCopy);
  MEMORY[0x1E69E5920](selfCopy);
  MEMORY[0x1E69E5920](viewCopy);
  return sub_1AC3B72B4() & 1;
}

- (void)refreshContentsWith:(id)with
{
  MEMORY[0x1E69E5928](with);
  MEMORY[0x1E69E5928](self);
  sub_1AC38D358();
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](with);
}

@end