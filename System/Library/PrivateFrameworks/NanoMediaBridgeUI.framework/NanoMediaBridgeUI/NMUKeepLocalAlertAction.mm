@interface NMUKeepLocalAlertAction
+ (id)actionWithTitle:(id)title shouldPerformKeepLocalRequest:(BOOL)request keepLocalRequestOptions:(id)options downloadAction:(unint64_t)action;
@end

@implementation NMUKeepLocalAlertAction

+ (id)actionWithTitle:(id)title shouldPerformKeepLocalRequest:(BOOL)request keepLocalRequestOptions:(id)options downloadAction:(unint64_t)action
{
  requestCopy = request;
  optionsCopy = options;
  titleCopy = title;
  v11 = objc_alloc_init(NMUKeepLocalAlertAction);
  [(NMUKeepLocalAlertAction *)v11 setTitle:titleCopy];

  [(NMUKeepLocalAlertAction *)v11 setShouldPerformKeepLocalRequest:requestCopy];
  [(NMUKeepLocalAlertAction *)v11 setKeepLocalRequestOptions:optionsCopy];

  [(NMUKeepLocalAlertAction *)v11 setDownloadAction:action];

  return v11;
}

@end