@interface TabDocumentActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (void)_prepareWithActivityItems:(id)a3 completion:(id)a4;
- (void)performActivity;
- (void)prepareWithTabDocument:(id)a3 completion:(id)a4;
@end

@implementation TabDocumentActivity

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = [a3 safari_firstObjectPassingTest:&__block_literal_global_41];
  tabDocument = self->_tabDocument;
  self->_tabDocument = v4;

  v6 = [(TabDocument *)self->_tabDocument isShowingStartPageOverriddenByExtension];
  if (![(TabDocumentActivity *)self canPerformOnNewTabPage]&& ([(TabDocument *)self->_tabDocument isBlank]|| v6) || !self->_tabDocument)
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

- (void)_prepareWithActivityItems:(id)a3 completion:(id)a4
{
  v8 = a4;
  v6 = [a3 safari_firstObjectPassingTest:&__block_literal_global_3_2];
  tabDocument = self->_tabDocument;
  self->_tabDocument = v6;

  [(TabDocumentActivity *)self prepareWithTabDocument:self->_tabDocument completion:v8];
}

uint64_t __60__TabDocumentActivity__prepareWithActivityItems_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)prepareWithTabDocument:(id)a3 completion:(id)a4
{
  v6 = a4;
  [(TabDocumentActivity *)self prepareWithTabDocument:a3];
  v6[2]();
}

- (void)performActivity
{
  [(TabDocumentActivity *)self performActivityWithTabDocument:self->_tabDocument];
  v4 = [(_SFActivity *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [MEMORY[0x277D499B8] sharedLogger];
    [v3 _sf_didPerformFormatMenuAction:-[TabDocumentActivity actionType](self provenance:{"actionType"), objc_msgSend(v4, "provenanceForSafariActivity:", self)}];
  }
}

@end