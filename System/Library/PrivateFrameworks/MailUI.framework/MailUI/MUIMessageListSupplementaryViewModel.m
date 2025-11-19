@interface MUIMessageListSupplementaryViewModel
+ (id)_publicDescriptionOfDisplayReason:(int64_t)a3;
+ (id)supplementaryViewModelWithDisplay:(BOOL)a3 kind:(id)a4 sectionIndex:(int64_t)a5 reason:(int64_t)a6;
- (NSString)ef_publicDescription;
- (id)initShouldDisplaySupplementaryView:(BOOL)a3 ofKind:(id)a4 atSectionWithIndex:(int64_t)a5 withDisplayReason:(int64_t)a6;
@end

@implementation MUIMessageListSupplementaryViewModel

- (id)initShouldDisplaySupplementaryView:(BOOL)a3 ofKind:(id)a4 atSectionWithIndex:(int64_t)a5 withDisplayReason:(int64_t)a6
{
  v10 = a4;
  v16.receiver = self;
  v16.super_class = MUIMessageListSupplementaryViewModel;
  v11 = [(MUIMessageListSupplementaryViewModel *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_shouldDisplaySupplementaryView = a3;
    v13 = [v10 copy];
    supplementaryKind = v12->_supplementaryKind;
    v12->_supplementaryKind = v13;

    v12->_sectionIndex = a5;
    v12->_displayReason = a6;
  }

  return v12;
}

+ (id)supplementaryViewModelWithDisplay:(BOOL)a3 kind:(id)a4 sectionIndex:(int64_t)a5 reason:(int64_t)a6
{
  v8 = a3;
  v9 = a4;
  v10 = [[MUIMessageListSupplementaryViewModel alloc] initShouldDisplaySupplementaryView:v8 ofKind:v9 atSectionWithIndex:a5 withDisplayReason:a6];

  return v10;
}

+ (id)_publicDescriptionOfDisplayReason:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return @"Section isn't visible";
  }

  else
  {
    return off_27818AC90[a3 - 1];
  }
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(MUIMessageListSupplementaryViewModel *)self shouldDisplaySupplementaryView];
  v6 = [(MUIMessageListSupplementaryViewModel *)self supplementaryKind];
  v7 = [(MUIMessageListSupplementaryViewModel *)self sectionIndex];
  v8 = [MUIMessageListSupplementaryViewModel _publicDescriptionOfDisplayReason:[(MUIMessageListSupplementaryViewModel *)self displayReason]];
  v9 = [v3 stringWithFormat:@"<%@: %p>\n\tshouldDisplayHeader: %d\n\tsupplementaryKind: %@\n\tsectionIndex: %ld\n\tdisplayReason: %@", v4, self, v5, v6, v7, v8];

  return v9;
}

@end