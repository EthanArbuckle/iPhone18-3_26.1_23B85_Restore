@interface GKUIContentUnavailableView
- (id)_titleFont;
@end

@implementation GKUIContentUnavailableView

- (id)_titleFont
{
  v8.receiver = self;
  v8.super_class = GKUIContentUnavailableView;
  _titleFont = [(_UIContentUnavailableView *)&v8 _titleFont];
  v3 = MEMORY[0x277D74300];
  fontDescriptor = [_titleFont fontDescriptor];
  v5 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
  [_titleFont pointSize];
  v6 = [v3 fontWithDescriptor:v5 size:?];

  return v6;
}

@end