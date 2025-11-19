@interface MultiLinkableTextView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5;
- (id)action;
- (void)refreshContentsWith:(id)a3;
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

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5
{
  v16 = self;
  v17 = a3;
  v15 = a4;
  v19 = a5;
  v10 = a5;
  v13 = sub_1AC3B7204();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v14 = &v8 - v9;
  MEMORY[0x1E69E5928](v6);
  MEMORY[0x1E69E5928](v15);
  MEMORY[0x1E69E5928](self);
  sub_1AC3B71F4();
  v18 = sub_1AC38D0B4(v17, v14, v10.location, v10.length);
  (*(v11 + 8))(v14, v13);
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v17);
  return sub_1AC3B72B4() & 1;
}

- (void)refreshContentsWith:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1AC38D358();
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

@end