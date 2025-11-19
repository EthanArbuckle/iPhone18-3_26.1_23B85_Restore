@interface MSTrackListLoadMoreCellConfiguration
+ (double)rowHeightForContext:(id)a3 representedObject:(id)a4;
- (id)colorForLabelAtIndex:(unint64_t)a3 withModifiers:(unint64_t)a4;
- (void)reloadLayoutInformation;
@end

@implementation MSTrackListLoadMoreCellConfiguration

+ (double)rowHeightForContext:(id)a3 representedObject:(id)a4
{
  [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
  v7 = v6 + -10.0 + -5.0;
  v8 = [a4 unmodifiedTitle];
  [a3 sizeForString:v8 font:objc_msgSend(MEMORY[0x277D74300] constrainedToSize:{"boldSystemFontOfSize:", 14.0), v7, 1.79769313e308}];
  return v9 + 26.0;
}

- (id)colorForLabelAtIndex:(unint64_t)a3 withModifiers:(unint64_t)a4
{
  if (a4)
  {
    v7.receiver = self;
    v7.super_class = MSTrackListLoadMoreCellConfiguration;
    return [(SULoadMoreMediaCellConfiguration *)&v7 colorForLabelAtIndex:a3 withModifiers:?];
  }

  else
  {
    v6 = MEMORY[0x277D75348];

    return [v6 blackColor];
  }
}

- (void)reloadLayoutInformation
{
  if ((*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D7FED8]))[1])
  {
    v2 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D7FED0]);
    *(v2 + 32) = xmmword_25ADD20A0;
    v3 = (self + *MEMORY[0x277D7FEE8]);
    v4 = v3[1] + -26.0;
    *(v2 + 48) = *v3 + -5.0 + -10.0;
    *(v2 + 56) = v4;
  }
}

@end