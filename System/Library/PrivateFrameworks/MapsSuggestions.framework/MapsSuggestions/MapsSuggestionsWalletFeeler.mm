@interface MapsSuggestionsWalletFeeler
- (MapsSuggestionsWalletFeeler)initWithDelegate:(id)delegate wallet:(id)wallet;
- (MapsSuggestionsWalletFeeler)initWithDelegate:(id)delegate wallet:(id)wallet name:(id)name;
- (id).cxx_construct;
@end

@implementation MapsSuggestionsWalletFeeler

- (MapsSuggestionsWalletFeeler)initWithDelegate:(id)delegate wallet:(id)wallet name:(id)name
{
  delegateCopy = delegate;
  walletCopy = wallet;
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = MapsSuggestionsWalletFeeler;
  v11 = [(MapsSuggestionsBaseFeeler *)&v23 initWithDelegate:delegateCopy name:nameCopy];
  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    sub_100003654(&v21, @"MapsSuggestionsWalletFeelerQueue", v12);
    v13 = v21;
    v21 = 0;
    innerQueue = v11->_queue._innerQueue;
    v11->_queue._innerQueue = v13;

    v15 = v22;
    v22 = 0;
    name = v11->_queue._name;
    v11->_queue._name = v15;

    objc_storeStrong(&v11->_wallet, wallet);
    GEOConfigGetDouble();
    v11->_pollingFrequency = v17;
    v18 = [[MapsSuggestionsMutableSignalPack alloc] initWithCapacity:3];
    signalPack = v11->_signalPack;
    v11->_signalPack = v18;
  }

  return v11;
}

- (MapsSuggestionsWalletFeeler)initWithDelegate:(id)delegate wallet:(id)wallet
{
  delegateCopy = delegate;
  walletCopy = wallet;
  v8 = [objc_opt_class() description];
  v9 = [(MapsSuggestionsWalletFeeler *)self initWithDelegate:delegateCopy wallet:walletCopy name:v8];

  return v9;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end