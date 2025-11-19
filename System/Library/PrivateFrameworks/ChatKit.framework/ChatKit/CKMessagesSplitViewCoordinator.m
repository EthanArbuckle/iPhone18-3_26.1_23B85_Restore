@interface CKMessagesSplitViewCoordinator
+ (id)newWithSplitViewController:(id)a3;
- (BOOL)isInspectorVisible;
- (CKMessagesSplitViewCoordinator)initWithSplitViewController:(id)a3;
- (UISplitViewController)splitViewController;
- (double)_calculateConversationListColumnWidth;
- (double)_macConvertLegacySidebarWidthToModernWidth:(double)a3;
- (double)_primaryColumnWidth;
- (double)_sanitizeProposedConversationListWidth:(double)a3;
- (double)constrainedPrimaryColumnWidthForResizeWidth:(double)a3;
- (void)dismissInspectorColumn;
- (void)persistColumnWidths;
- (void)presentViewControllerInInspector:(id)a3;
- (void)setColumnResizeParams:(id *)a3;
- (void)setInspectorColumnSizes;
- (void)setSearchPresented:(BOOL)a3;
- (void)setViewControllerInInspector:(id)a3;
- (void)splitViewControllerWillBeginResizingColumn:(int64_t)a3;
- (void)updateColumnWidths;
@end

@implementation CKMessagesSplitViewCoordinator

- (BOOL)isInspectorVisible
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isModernSplitViewControllerEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
  v6 = [v5 viewControllerForColumn:4];

  v7 = [v6 parentViewController];
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;

  return v9;
}

- (UISplitViewController)splitViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);

  return WeakRetained;
}

- (CKMessagesSplitViewCoordinator)initWithSplitViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CKMessagesSplitViewCoordinator;
  v5 = [(CKMessagesSplitViewCoordinator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CKMessagesSplitViewCoordinator *)v5 setSplitViewController:v4];
  }

  return v6;
}

+ (id)newWithSplitViewController:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSplitViewController:v4];

  return v5;
}

- (void)presentViewControllerInInspector:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isModernSplitViewControllerEnabled];

  if (v5)
  {
    if (v8)
    {
      v6 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
      [v6 ck_setInspectorColumnViewController:v8];

      v7 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
      [v7 showColumn:4];
    }

    else
    {
      [(CKMessagesSplitViewCoordinator *)self dismissInspectorColumn];
    }
  }
}

- (void)setViewControllerInInspector:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isModernSplitViewControllerEnabled];

  v6 = v8;
  if (v5)
  {
    if (v8)
    {
      if ([(CKMessagesSplitViewCoordinator *)self isInspectorVisible])
      {
        v7 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
        [v7 ck_setInspectorColumnViewController:v8];
      }

      else
      {
        [(CKMessagesSplitViewCoordinator *)self presentViewControllerInInspector:v8];
      }
    }

    else
    {
      [(CKMessagesSplitViewCoordinator *)self dismissInspectorColumn];
    }

    v6 = v8;
  }
}

- (void)dismissInspectorColumn
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isModernSplitViewControllerEnabled];

  if (v4)
  {
    v5 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
    [v5 hideColumn:4];

    v6 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
    [v6 ck_setInspectorColumnViewController:0];
  }
}

- (void)updateColumnWidths
{
  if (-[CKMessagesSplitViewCoordinator isSearchPresented](self, "isSearchPresented") && (-[CKMessagesSplitViewCoordinator splitViewController](self, "splitViewController"), v3 = objc_claimAutoreleasedReturnValue(), [v3 primaryColumnWidth], v5 = v4, +[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "defaultConversationListWidth"), v8 = v7, v6, v3, v5 < v8))
  {
    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 defaultConversationListWidth];
    v11 = v10;
  }

  else
  {
    [(CKMessagesSplitViewCoordinator *)self _primaryColumnWidth];
    v11 = v12;
  }

  v13 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
  [v13 setMinimumPrimaryColumnWidth:v11];

  v14 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
  [v14 setPreferredPrimaryColumnWidth:v11];

  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 maxConversationListWidth];
  v17 = v16;
  v18 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
  [v18 setMaximumPrimaryColumnWidth:v17];

  [(CKMessagesSplitViewCoordinator *)self setInspectorColumnSizes];
}

- (void)persistColumnWidths
{
  if (CKIsRunningInMacCatalyst())
  {
    v3 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
    [v3 primaryColumnWidth];
    [(CKMessagesSplitViewCoordinator *)self _sanitizeProposedConversationListWidth:?];
    v5 = v4;

    CKSetConversationListPersistedWidth(v5);
  }
}

- (void)setSearchPresented:(BOOL)a3
{
  v3 = a3;
  if (CKIsRunningInMacCatalyst() && self->_searchPresented != v3)
  {
    self->_searchPresented = v3;

    [(CKMessagesSplitViewCoordinator *)self updateColumnWidths];
  }
}

- (double)constrainedPrimaryColumnWidthForResizeWidth:(double)a3
{
  if (CKIsRunningInMacCatalyst())
  {
    v41 = 0uLL;
    v42 = 0;
    [(CKMessagesSplitViewCoordinator *)self columnResizeParams];
    v5 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
    [v5 primaryColumnWidth];
    v7 = v6;
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 minConversationListWidth];
    v10 = v9;
    v11 = v7 == v9;

    v12 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
    [v12 primaryColumnWidth];
    v14 = v13;
    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 snapToMinConversationListWidth];
    v17 = v16;
    v18 = v14 == v16;

    if (!v11 && (BYTE1(v42) == v18 ? (v19 = v42 == a3 >= 0.0) : (v19 = 0), v19))
    {
      v20 = *&v41 + vabdd_f64(a3, *(&v41 + 1));
    }

    else
    {
      v20 = vabdd_f64(a3, *(&v41 + 1));
    }

    *&v41 = v20;
    v21 = +[CKUIBehavior sharedBehaviors];
    [v21 conversationListDragDistanceThreshold];
    v23 = v22;

    if (v7 == v10)
    {
      v24 = +[CKUIBehavior sharedBehaviors];
      if (v23 < *&v41 && a3 >= 0.0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v14 != v17)
      {
        if (a3 >= 0.0 || v23 >= *&v41 || (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v32 = objc_claimAutoreleasedReturnValue(), [v32 snapToMinConversationListWidth], v34 = v33, v32, v34 <= a3))
        {
          v37 = +[CKUIBehavior sharedBehaviors];
          [v37 snapToMinConversationListWidth];
          v31 = v38;

          if (v31 <= a3)
          {
            v31 = a3;
          }

          goto LABEL_26;
        }

        v35 = +[CKUIBehavior sharedBehaviors];
        v24 = v35;
        goto LABEL_24;
      }

      v27 = +[CKUIBehavior sharedBehaviors];
      v24 = v27;
      if (a3 >= 0.0)
      {
        [v27 snapToMinConversationListWidth];
        v29 = v28;

        v30 = v29 <= a3;
        v31 = a3;
        if (v30)
        {
LABEL_26:
          *(&v41 + 1) = a3;
          LOBYTE(v42) = a3 >= 0.0;
          BYTE1(v42) = v18;
          BYTE2(v42) = v11;
          v39 = v41;
          v40 = v42;
          [(CKMessagesSplitViewCoordinator *)self setColumnResizeParams:&v39];
          return v31;
        }

        v25 = +[CKUIBehavior sharedBehaviors];
        v24 = v25;
        goto LABEL_13;
      }

      if (v23 >= *&v41)
      {
LABEL_12:
        v25 = v24;
LABEL_13:
        [v25 snapToMinConversationListWidth];
LABEL_25:
        v31 = v26;

        goto LABEL_26;
      }
    }

    v35 = v24;
LABEL_24:
    [v35 minConversationListWidth];
    goto LABEL_25;
  }

  return a3;
}

- (void)splitViewControllerWillBeginResizingColumn:(int64_t)a3
{
  if (!a3)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 minConversationListWidth];
    v6 = v5;
    v7 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
    [v7 setMinimumPrimaryColumnWidth:v6];
  }
}

- (double)_primaryColumnWidth
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
  [v3 preferredPrimaryColumnWidth];
  v5 = v4;

  v6 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
  v7 = [v6 isViewLoaded];

  if (v7)
  {
    if (CKIsRunningInMacCatalyst())
    {
      v8 = CKGetConversationListPersistedWidth(0.0);
      v9 = v8;
      if (v8 == 0.0)
      {
        if (CKGetLegacyAppMigratedSidebarPersistedWidth(0.0) == 0.0)
        {
          v10 = +[CKUIBehavior sharedBehaviors];
          [v10 defaultConversationListWidth];
          v9 = v11;
        }

        else
        {
          [(CKMessagesSplitViewCoordinator *)self _macConvertLegacySidebarWidthToModernWidth:?];
          v9 = v13;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v18 = 134217984;
          v19 = v8;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "lastPersistedWidth: %f", &v18, 0xCu);
        }
      }
    }

    else
    {
      [(CKMessagesSplitViewCoordinator *)self _calculateConversationListColumnWidth];
      v9 = v12;
    }

    [(CKMessagesSplitViewCoordinator *)self _sanitizeProposedConversationListWidth:v9];
    v5 = v15;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = 134217984;
      v19 = v5;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "setting conversationListWidth: %f", &v18, 0xCu);
    }
  }

  return v5;
}

- (double)_calculateConversationListColumnWidth
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CKNonFlatDeviceOrientation();
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 conversationListWidthForInterfaceOrientation:v2];
  v5 = v4;

  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  v7 = [v6 __ck_isFullscreen];

  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 minConversationListWidth];
  v10 = v9;

  if (v7)
  {
    v11 = v5;
  }

  else
  {
    v11 = v10;
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:v2];
      v15 = 134219010;
      v16 = v11;
      v17 = 2112;
      v18 = v13;
      v19 = 2048;
      v20 = v5;
      v21 = 1024;
      v22 = v7;
      v23 = 2048;
      v24 = v10;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "_calculateConversationListColumnWidth columnWidth: %f, orientation: %@, widthForCurrentOrientation: %f, isFullScreen: %{BOOL}d, minConversationListWidth: %f", &v15, 0x30u);
    }
  }

  return v11;
}

- (double)_macConvertLegacySidebarWidthToModernWidth:(double)a3
{
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 defaultConversationListWidth];
  v6 = v5;

  if (!CKIsRunningInMacCatalyst())
  {
    return v6;
  }

  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 legacyMacAppSnapToMinConversationListWidth];
  v9 = v8;

  v10 = +[CKUIBehavior sharedBehaviors];
  v11 = v10;
  if (v9 > a3)
  {
    [v10 minConversationListWidth];
LABEL_10:
    v6 = v12;
    goto LABEL_11;
  }

  [v10 legacyMacAppSnapToMinConversationListWidth];
  v14 = v13;

  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 snapToMinConversationListWidth];
  v6 = v15;
  if (v14 != a3)
  {
    if (v15 >= a3)
    {
    }

    else
    {
      v16 = +[CKUIBehavior sharedBehaviors];
      [v16 maxConversationListWidth];
      v18 = v17;

      if (v18 > a3)
      {
        return a3;
      }
    }

    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 maxConversationListWidth];
    goto LABEL_10;
  }

LABEL_11:

  return v6;
}

- (double)_sanitizeProposedConversationListWidth:(double)a3
{
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 minConversationListWidth];
  v6 = v5;

  if (v6 <= a3)
  {
    v6 = a3;
  }

  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 maxConversationListWidth];
  v9 = v8;

  if (v6 < v9)
  {
    v9 = v6;
  }

  if (CKIsRunningInMacCatalyst())
  {
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 snapToMinConversationListWidth];
    if (v9 < v11)
    {
      v12 = +[CKUIBehavior sharedBehaviors];
      [v12 minConversationListWidth];
      v9 = v13;
    }
  }

  return v9;
}

- (void)setInspectorColumnSizes
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isModernSplitViewControllerEnabled];

  if (v4)
  {
    v5 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
      v8 = +[CKUIBehavior sharedBehaviors];
      [v8 minInspectorColumnWidth];
      [v7 setMinimumInspectorColumnWidth:?];
    }

    v9 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
      v12 = +[CKUIBehavior sharedBehaviors];
      [v12 maxInspectorColumnWidth];
      [v11 setMaximumInspectorColumnWidth:?];
    }

    v13 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v16 = [(CKMessagesSplitViewCoordinator *)self splitViewController];
      v15 = +[CKUIBehavior sharedBehaviors];
      [v15 defaultInspectorColumnWidth];
      [v16 setPreferredInspectorColumnWidth:?];
    }
  }
}

- (void)setColumnResizeParams:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_columnResizeParams.proposedPreviouslyIncreasing = *&a3->var2;
  *&self->_columnResizeParams.currentDragDistance = v3;
}

@end