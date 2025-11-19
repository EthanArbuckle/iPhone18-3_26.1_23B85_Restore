@interface GKUIContentUnavailableView
- (id)_titleFont;
@end

@implementation GKUIContentUnavailableView

- (id)_titleFont
{
  v8.receiver = self;
  v8.super_class = GKUIContentUnavailableView;
  v2 = [(_UIContentUnavailableView *)&v8 _titleFont];
  v3 = MEMORY[0x277D74300];
  v4 = [v2 fontDescriptor];
  v5 = [v4 fontDescriptorWithSymbolicTraits:2];
  [v2 pointSize];
  v6 = [v3 fontWithDescriptor:v5 size:?];

  return v6;
}

@end