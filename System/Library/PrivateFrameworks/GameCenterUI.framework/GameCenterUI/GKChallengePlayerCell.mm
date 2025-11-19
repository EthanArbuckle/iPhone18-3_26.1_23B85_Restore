@interface GKChallengePlayerCell
- (void)drawRect:(CGRect)a3;
@end

@implementation GKChallengePlayerCell

- (void)drawRect:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = GKChallengePlayerCell;
  [(GKChallengePlayerCell *)&v9 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [MEMORY[0x277D75348] quaternaryLabelColor];
  v5 = [(GKChallengePlayerCell *)self seperatorLine];
  [v5 setBackgroundColor:v4];

  v6 = [(GKChallengePlayerCell *)self chevronImageView];
  [v6 setClipsToBounds:0];

  v7 = [MEMORY[0x277D75348] quaternaryLabelColor];
  v8 = [(GKChallengePlayerCell *)self chevronImageView];
  [v8 setTintColor:v7];
}

@end