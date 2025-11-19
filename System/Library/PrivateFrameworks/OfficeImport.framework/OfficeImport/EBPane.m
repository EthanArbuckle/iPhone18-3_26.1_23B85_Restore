@interface EBPane
+ (void)readXlPaneFrom:(XlSheetPresentation *)a3 state:(id)a4;
+ (void)writePaneForSheet:(id)a3 toXlSheetPresentation:(XlSheetPresentation *)a4 xlWindow2:(XlWindow2 *)a5;
@end

@implementation EBPane

+ (void)readXlPaneFrom:(XlSheetPresentation *)a3 state:(id)a4
{
  v5 = a4;
  var3 = a3->var3;
  if (var3)
  {
    v12 = v5;
    v7 = +[EDPane pane];
    [v7 setActivePane:*(var3 + 6)];
    LOWORD(v8) = *(var3 + 8);
    [v7 setXSplitPosition:v8];
    LOWORD(v9) = *(var3 + 9);
    [v7 setYSplitPosition:v9];
    v10 = [EDReference referenceWithFirstRow:*(var3 + 10) lastRow:*(var3 + 10) firstColumn:*(var3 + 11) lastColumn:*(var3 + 11)];
    [v7 setTopLeftCell:v10];

    v11 = [v12 edSheet];
    [v11 setPane:v7];

    v5 = v12;
  }
}

+ (void)writePaneForSheet:(id)a3 toXlSheetPresentation:(XlSheetPresentation *)a4 xlWindow2:(XlWindow2 *)a5
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 pane];
    if (objc_claimAutoreleasedReturnValue())
    {
      operator new();
    }
  }
}

@end