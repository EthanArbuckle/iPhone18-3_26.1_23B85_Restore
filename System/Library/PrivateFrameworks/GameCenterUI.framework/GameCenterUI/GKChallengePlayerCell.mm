@interface GKChallengePlayerCell
- (void)drawRect:(CGRect)rect;
@end

@implementation GKChallengePlayerCell

- (void)drawRect:(CGRect)rect
{
  v9.receiver = self;
  v9.super_class = GKChallengePlayerCell;
  [(GKChallengePlayerCell *)&v9 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  quaternaryLabelColor = [MEMORY[0x277D75348] quaternaryLabelColor];
  seperatorLine = [(GKChallengePlayerCell *)self seperatorLine];
  [seperatorLine setBackgroundColor:quaternaryLabelColor];

  chevronImageView = [(GKChallengePlayerCell *)self chevronImageView];
  [chevronImageView setClipsToBounds:0];

  quaternaryLabelColor2 = [MEMORY[0x277D75348] quaternaryLabelColor];
  chevronImageView2 = [(GKChallengePlayerCell *)self chevronImageView];
  [chevronImageView2 setTintColor:quaternaryLabelColor2];
}

@end