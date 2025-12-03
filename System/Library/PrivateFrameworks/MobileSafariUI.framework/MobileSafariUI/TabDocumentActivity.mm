@interface TabDocumentActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (void)_prepareWithActivityItems:(id)items completion:(id)completion;
- (void)performActivity;
- (void)prepareWithTabDocument:(id)document completion:(id)completion;
@end

@implementation TabDocumentActivity

- (BOOL)canPerformWithActivityItems:(id)items
{
  v4 = [items safari_firstObjectPassingTest:&__block_literal_global_41];
  tabDocument = self->_tabDocument;
  self->_tabDocument = v4;

  isShowingStartPageOverriddenByExtension = [(TabDocument *)self->_tabDocument isShowingStartPageOverriddenByExtension];
  if (![(TabDocumentActivity *)self canPerformOnNewTabPage]&& ([(TabDocument *)self->_tabDocument isBlank]|| isShowingStartPageOverriddenByExtension) || !self->_tabDocument)
  {
    return 0;
  }

  return [(TabDocumentActivity *)self canPerformWithTabDocument:?];
}

uint64_t __51__TabDocumentActivity_canPerformWithActivityItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_prepareWithActivityItems:(id)items completion:(id)completion
{
  completionCopy = completion;
  v6 = [items safari_firstObjectPassingTest:&__block_literal_global_3_2];
  tabDocument = self->_tabDocument;
  self->_tabDocument = v6;

  [(TabDocumentActivity *)self prepareWithTabDocument:self->_tabDocument completion:completionCopy];
}

uint64_t __60__TabDocumentActivity__prepareWithActivityItems_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)prepareWithTabDocument:(id)document completion:(id)completion
{
  completionCopy = completion;
  [(TabDocumentActivity *)self prepareWithTabDocument:document];
  completionCopy[2]();
}

- (void)performActivity
{
  [(TabDocumentActivity *)self performActivityWithTabDocument:self->_tabDocument];
  delegate = [(_SFActivity *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] _sf_didPerformFormatMenuAction:-[TabDocumentActivity actionType](self provenance:{"actionType"), objc_msgSend(delegate, "provenanceForSafariActivity:", self)}];
  }
}

@end