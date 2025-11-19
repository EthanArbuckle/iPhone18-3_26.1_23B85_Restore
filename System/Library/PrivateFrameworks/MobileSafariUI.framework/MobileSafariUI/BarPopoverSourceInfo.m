@interface BarPopoverSourceInfo
- (BarPopoverSourceInfo)initWithBrowserController:(id)a3 barItem:(int64_t)a4;
- (CGRect)popoverSourceRect;
- (NSString)description;
- (UIBarButtonItem)barButtonItem;
- (UIView)popoverSourceView;
- (id)_sourceInfo;
@end

@implementation BarPopoverSourceInfo

- (BarPopoverSourceInfo)initWithBrowserController:(id)a3 barItem:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = BarPopoverSourceInfo;
  v8 = [(BarPopoverSourceInfo *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_barItem = a4;
    objc_storeStrong(&v8->_browserController, a3);
    if (a4 == 11 && (_SFDeviceIsPad() & 1) == 0)
    {
      v9->_shouldDismissIfSourceRemovedAfterRepositioning = 1;
    }

    v10 = v9;
  }

  return v9;
}

- (id)_sourceInfo
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(BrowserController *)self->_browserController barManager];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__16;
  v19 = __Block_byref_object_dispose__16;
  v20 = 0;
  barItem = self->_barItem;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __35__BarPopoverSourceInfo__sourceInfo__block_invoke;
  v14[3] = &unk_2781DBC40;
  v14[4] = &v15;
  [v3 performWithRegistrationContainingItem:barItem block:v14];
  v5 = v16[5];
  if (!v5)
  {
    v6 = [(BrowserController *)self->_browserController rootViewController];
    v7 = WBS_LOG_CHANNEL_PREFIXUserInterface();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v10 = [v6 navigationController];
      v11 = v10;
      v12 = @"is NOT";
      if (v6)
      {
        v13 = @"is NOT";
      }

      else
      {
        v13 = @"is";
      }

      *buf = 138543874;
      v22 = self;
      v23 = 2114;
      v24 = v13;
      if (!v10)
      {
        v12 = @"is";
      }

      v25 = 2114;
      v26 = v12;
      _os_log_fault_impl(&dword_215819000, v7, OS_LOG_TYPE_FAULT, "%{public}@: No inner source info (view controller %{public}@ nil; navigation bar %{public}@ nil)", buf, 0x20u);
    }

    v5 = v16[5];
  }

  v8 = v5;
  _Block_object_dispose(&v15, 8);

  return v8;
}

void __35__BarPopoverSourceInfo__sourceInfo__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v14 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 popoverSourceInfoForBarItem:a2];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v11 = [v14 popoverSourceInfoForItem:a2];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = _SFStringForBarItem();
  v7 = [v3 stringWithFormat:@"<%@: %p barItem = %@>", v5, self, v6];;

  return v7;
}

- (UIBarButtonItem)barButtonItem
{
  v2 = [(BarPopoverSourceInfo *)self _sourceInfo];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 barButtonItem];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIView)popoverSourceView
{
  v2 = [(BarPopoverSourceInfo *)self _sourceInfo];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 popoverSourceView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGRect)popoverSourceRect
{
  v2 = [(BarPopoverSourceInfo *)self _sourceInfo];
  if (objc_opt_respondsToSelector())
  {
    [v2 popoverSourceRect];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v4 = *MEMORY[0x277CBF398];
    v6 = *(MEMORY[0x277CBF398] + 8);
    v8 = *(MEMORY[0x277CBF398] + 16);
    v10 = *(MEMORY[0x277CBF398] + 24);
  }

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end