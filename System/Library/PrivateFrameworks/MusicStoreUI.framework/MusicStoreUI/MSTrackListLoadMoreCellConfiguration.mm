@interface MSTrackListLoadMoreCellConfiguration
+ (double)rowHeightForContext:(id)context representedObject:(id)object;
- (id)colorForLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers;
- (void)reloadLayoutInformation;
@end

@implementation MSTrackListLoadMoreCellConfiguration

+ (double)rowHeightForContext:(id)context representedObject:(id)object
{
  [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
  v7 = v6 + -10.0 + -5.0;
  unmodifiedTitle = [object unmodifiedTitle];
  [context sizeForString:unmodifiedTitle font:objc_msgSend(MEMORY[0x277D74300] constrainedToSize:{"boldSystemFontOfSize:", 14.0), v7, 1.79769313e308}];
  return v9 + 26.0;
}

- (id)colorForLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers
{
  if (modifiers)
  {
    v7.receiver = self;
    v7.super_class = MSTrackListLoadMoreCellConfiguration;
    return [(SULoadMoreMediaCellConfiguration *)&v7 colorForLabelAtIndex:index withModifiers:?];
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