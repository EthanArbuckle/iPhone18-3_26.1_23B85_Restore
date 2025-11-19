@interface NTKMonogramComplicationController
- (void)_activate;
- (void)_deactivate;
- (void)_handleMonogramTextReload;
- (void)_reloadMonogramText;
- (void)_updateDisplay;
@end

@implementation NTKMonogramComplicationController

- (void)_activate
{
  [(NTKMonogramComplicationController *)self _reloadMonogramText];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__handleMonogramTextReload name:@"NTKCustomMonogramChangedNotification" object:0];
  [v3 addObserver:self selector:sel__handleMonogramTextReload name:@"NTKFaceDefaultsChangedNotification" object:0];
  [v3 addObserver:self selector:sel__handleMonogramTextReload name:*MEMORY[0x277CBE620] object:0];
  [v3 addObserver:self selector:sel__handleMonogramTextReload name:*MEMORY[0x277CBB690] object:0];
}

- (void)_deactivate
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"NTKCustomMonogramChangedNotification" object:0];
  [v3 removeObserver:self name:@"NTKFaceDefaultsChangedNotification" object:0];
  [v3 removeObserver:self name:*MEMORY[0x277CBE620] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277CBB690] object:0];
}

- (void)_updateDisplay
{
  v3 = [(NTKComplicationController *)self legacyDisplay];
  [v3 setMonogramText:self->_monogramText];
}

- (void)_reloadMonogramText
{
  v3 = +[NTKMonogram monogram];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_284110E98;
  }

  obj = v4;
  if (![(NSString *)self->_monogramText isEqualToString:?])
  {
    objc_storeStrong(&self->_monogramText, obj);
    [(NTKMonogramComplicationController *)self _updateDisplay];
  }
}

- (void)_handleMonogramTextReload
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NTKMonogramComplicationController__handleMonogramTextReload__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end