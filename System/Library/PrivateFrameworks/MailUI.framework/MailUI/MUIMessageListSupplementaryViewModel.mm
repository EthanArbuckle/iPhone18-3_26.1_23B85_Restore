@interface MUIMessageListSupplementaryViewModel
+ (id)_publicDescriptionOfDisplayReason:(int64_t)reason;
+ (id)supplementaryViewModelWithDisplay:(BOOL)display kind:(id)kind sectionIndex:(int64_t)index reason:(int64_t)reason;
- (NSString)ef_publicDescription;
- (id)initShouldDisplaySupplementaryView:(BOOL)view ofKind:(id)kind atSectionWithIndex:(int64_t)index withDisplayReason:(int64_t)reason;
@end

@implementation MUIMessageListSupplementaryViewModel

- (id)initShouldDisplaySupplementaryView:(BOOL)view ofKind:(id)kind atSectionWithIndex:(int64_t)index withDisplayReason:(int64_t)reason
{
  kindCopy = kind;
  v16.receiver = self;
  v16.super_class = MUIMessageListSupplementaryViewModel;
  v11 = [(MUIMessageListSupplementaryViewModel *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_shouldDisplaySupplementaryView = view;
    v13 = [kindCopy copy];
    supplementaryKind = v12->_supplementaryKind;
    v12->_supplementaryKind = v13;

    v12->_sectionIndex = index;
    v12->_displayReason = reason;
  }

  return v12;
}

+ (id)supplementaryViewModelWithDisplay:(BOOL)display kind:(id)kind sectionIndex:(int64_t)index reason:(int64_t)reason
{
  displayCopy = display;
  kindCopy = kind;
  v10 = [[MUIMessageListSupplementaryViewModel alloc] initShouldDisplaySupplementaryView:displayCopy ofKind:kindCopy atSectionWithIndex:index withDisplayReason:reason];

  return v10;
}

+ (id)_publicDescriptionOfDisplayReason:(int64_t)reason
{
  if ((reason - 1) > 4)
  {
    return @"Section isn't visible";
  }

  else
  {
    return off_27818AC90[reason - 1];
  }
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  shouldDisplaySupplementaryView = [(MUIMessageListSupplementaryViewModel *)self shouldDisplaySupplementaryView];
  supplementaryKind = [(MUIMessageListSupplementaryViewModel *)self supplementaryKind];
  sectionIndex = [(MUIMessageListSupplementaryViewModel *)self sectionIndex];
  v8 = [MUIMessageListSupplementaryViewModel _publicDescriptionOfDisplayReason:[(MUIMessageListSupplementaryViewModel *)self displayReason]];
  v9 = [v3 stringWithFormat:@"<%@: %p>\n\tshouldDisplayHeader: %d\n\tsupplementaryKind: %@\n\tsectionIndex: %ld\n\tdisplayReason: %@", v4, self, shouldDisplaySupplementaryView, supplementaryKind, sectionIndex, v8];

  return v9;
}

@end