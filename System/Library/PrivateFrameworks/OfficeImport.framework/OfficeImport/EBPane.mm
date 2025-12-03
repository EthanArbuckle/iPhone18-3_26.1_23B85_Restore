@interface EBPane
+ (void)readXlPaneFrom:(XlSheetPresentation *)from state:(id)state;
+ (void)writePaneForSheet:(id)sheet toXlSheetPresentation:(XlSheetPresentation *)presentation xlWindow2:(XlWindow2 *)window2;
@end

@implementation EBPane

+ (void)readXlPaneFrom:(XlSheetPresentation *)from state:(id)state
{
  stateCopy = state;
  var3 = from->var3;
  if (var3)
  {
    v12 = stateCopy;
    v7 = +[EDPane pane];
    [v7 setActivePane:*(var3 + 6)];
    LOWORD(v8) = *(var3 + 8);
    [v7 setXSplitPosition:v8];
    LOWORD(v9) = *(var3 + 9);
    [v7 setYSplitPosition:v9];
    v10 = [EDReference referenceWithFirstRow:*(var3 + 10) lastRow:*(var3 + 10) firstColumn:*(var3 + 11) lastColumn:*(var3 + 11)];
    [v7 setTopLeftCell:v10];

    edSheet = [v12 edSheet];
    [edSheet setPane:v7];

    stateCopy = v12;
  }
}

+ (void)writePaneForSheet:(id)sheet toXlSheetPresentation:(XlSheetPresentation *)presentation xlWindow2:(XlWindow2 *)window2
{
  sheetCopy = sheet;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [sheetCopy pane];
    if (objc_claimAutoreleasedReturnValue())
    {
      operator new();
    }
  }
}

@end