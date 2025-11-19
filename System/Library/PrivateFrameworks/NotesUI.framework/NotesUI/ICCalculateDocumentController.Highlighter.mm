@interface ICCalculateDocumentController.Highlighter
- (void)calculateDocumentControllerDidUpdateDocument:(id)a3;
- (void)noteDidChangeCalculatePreviewBehavior:(id)a3;
- (void)performHighlightsUpdate;
- (void)textStorageDidProcessEndEditing:(id)a3;
@end

@implementation ICCalculateDocumentController.Highlighter

- (void)performHighlightsUpdate
{

  sub_1D440837C();
}

- (void)textStorageDidProcessEndEditing:(id)a3
{
  v3 = sub_1D4416E94();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4416E54();

  sub_1D44094D0();

  (*(v4 + 8))(v6, v3);
}

- (void)calculateDocumentControllerDidUpdateDocument:(id)a3
{
  v3 = sub_1D4416E94();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4416E54();

  v7 = sub_1D44082EC();
  [v7 requestFire];

  (*(v4 + 8))(v6, v3);
}

- (void)noteDidChangeCalculatePreviewBehavior:(id)a3
{
  v3 = sub_1D4416E94();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4416E54();

  sub_1D41890D0();

  (*(v4 + 8))(v6, v3);
}

@end