@interface HKMedicalIDEditorLanguageCell
- (void)beginEditing;
- (void)setValueLanguageText:(id)text;
@end

@implementation HKMedicalIDEditorLanguageCell

- (void)beginEditing
{
  v5.receiver = self;
  v5.super_class = HKMedicalIDEditorLanguageCell;
  [(HKMedicalIDEditorCell *)&v5 beginEditing];
  editAction = [(HKMedicalIDEditorLanguageCell *)self editAction];

  if (editAction)
  {
    editAction2 = [(HKMedicalIDEditorLanguageCell *)self editAction];
    editAction2[2]();
  }
}

- (void)setValueLanguageText:(id)text
{
  textCopy = text;
  identifier = [textCopy identifier];

  if (identifier)
  {
    localizedStringForDisplay = [textCopy localizedStringForDisplay];
    inputTextField = [(HKMedicalIDEditorCell *)self inputTextField];
    [inputTextField setText:localizedStringForDisplay];

    editDelegate = [(HKMedicalIDEditorCell *)self editDelegate];
    [editDelegate medicalIDEditorCellDidChangeValue:self];
  }
}

@end