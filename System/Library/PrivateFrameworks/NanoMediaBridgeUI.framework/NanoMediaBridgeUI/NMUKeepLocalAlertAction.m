@interface NMUKeepLocalAlertAction
+ (id)actionWithTitle:(id)a3 shouldPerformKeepLocalRequest:(BOOL)a4 keepLocalRequestOptions:(id)a5 downloadAction:(unint64_t)a6;
@end

@implementation NMUKeepLocalAlertAction

+ (id)actionWithTitle:(id)a3 shouldPerformKeepLocalRequest:(BOOL)a4 keepLocalRequestOptions:(id)a5 downloadAction:(unint64_t)a6
{
  v7 = a4;
  v9 = a5;
  v10 = a3;
  v11 = objc_alloc_init(NMUKeepLocalAlertAction);
  [(NMUKeepLocalAlertAction *)v11 setTitle:v10];

  [(NMUKeepLocalAlertAction *)v11 setShouldPerformKeepLocalRequest:v7];
  [(NMUKeepLocalAlertAction *)v11 setKeepLocalRequestOptions:v9];

  [(NMUKeepLocalAlertAction *)v11 setDownloadAction:a6];

  return v11;
}

@end