@interface CNObservable(CNAutocomplete)
- (id)activityIndicatingObservableWithActivityDidStartHandler:()CNAutocomplete activityDidStopHandler:;
- (id)autocompleteTimeoutAfterDelay:()CNAutocomplete doOnTimeout:scheduler:;
- (id)networkObservableWithActivityDidStartHandler:()CNAutocomplete activityDidStopHandler:timeoutDelay:subscriptionDelay:scheduler:;
@end

@implementation CNObservable(CNAutocomplete)

- (id)autocompleteTimeoutAfterDelay:()CNAutocomplete doOnTimeout:scheduler:
{
  v8 = a4;
  v9 = a5;
  v10 = [self doOnError:&__block_literal_global_14];
  emptyObservable = [MEMORY[0x277CFBE60] emptyObservable];
  v12 = [v10 onError:emptyObservable];

  v13 = MEMORY[0x277CCACA8];
  v14 = [self debugDescription];
  v15 = [v13 stringWithFormat:@"%@, %@", v14, self];

  emptyObservable2 = [MEMORY[0x277CFBE60] emptyObservable];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __84__CNObservable_CNAutocomplete__autocompleteTimeoutAfterDelay_doOnTimeout_scheduler___block_invoke_3;
  v22[3] = &unk_2781C40C0;
  v23 = v15;
  v24 = v8;
  v17 = v8;
  v18 = v15;
  v19 = [emptyObservable2 doOnSubscribe:v22];

  v20 = [v12 timeoutAfterDelay:v19 alternateObservable:v9 schedule:a2];

  return v20;
}

- (id)activityIndicatingObservableWithActivityDidStartHandler:()CNAutocomplete activityDidStopHandler:
{
  v6 = a3;
  v7 = a4;
  selfCopy = self;
  v9 = selfCopy;
  if (v6)
  {
    v10 = [selfCopy doOnSubscribe:v6];

    v9 = v10;
  }

  if (v7)
  {
    v11 = [v9 doOnTerminate:v7];

    v9 = v11;
  }

  return v9;
}

- (id)networkObservableWithActivityDidStartHandler:()CNAutocomplete activityDidStopHandler:timeoutDelay:subscriptionDelay:scheduler:
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = [self autocompleteTimeoutAfterDelay:0 doOnTimeout:v12 scheduler:a2];
  v16 = [v15 activityIndicatingObservableWithActivityDidStartHandler:v14 activityDidStopHandler:v13];

  v17 = [v16 delaySubscription:v12 scheduler:a3];

  return v17;
}

@end