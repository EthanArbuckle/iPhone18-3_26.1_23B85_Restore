@interface ICShowIdentifierActivity
- (ICShowIdentifierActivity)initWithIdentifier:(id)a3;
- (id)activityViewController;
@end

@implementation ICShowIdentifierActivity

- (ICShowIdentifierActivity)initWithIdentifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICShowIdentifierActivity;
  v5 = [(UIActivity *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICShowIdentifierActivity *)v5 setIdentifier:v4];
  }

  return v6;
}

- (id)activityViewController
{
  v3 = MEMORY[0x1E69DC650];
  v4 = [(ICShowIdentifierActivity *)self identifier];
  v5 = [v3 alertControllerWithTitle:v4 message:@"Copy this identifier to the clipboard?" preferredStyle:0];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__ICShowIdentifierActivity_activityViewController__block_invoke;
  v9[3] = &unk_1E846C730;
  v9[4] = self;
  v6 = [MEMORY[0x1E69DC648] actionWithTitle:@"Copy" style:0 handler:v9];
  [v5 addAction:v6];

  v7 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
  [v5 addAction:v7];

  return v5;
}

void __50__ICShowIdentifierActivity_activityViewController__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v3 = [*(a1 + 32) identifier];
  v5[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 setStrings:v4];
}

@end