@interface MapsSuggestionsPortraitFeeler
- (MapsSuggestionsPortraitFeeler)initWithDelegate:(id)a3 portrait:(id)a4;
- (MapsSuggestionsPortraitFeeler)initWithDelegate:(id)a3 portrait:(id)a4 name:(id)a5;
- (id).cxx_construct;
@end

@implementation MapsSuggestionsPortraitFeeler

- (MapsSuggestionsPortraitFeeler)initWithDelegate:(id)a3 portrait:(id)a4 name:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = MapsSuggestionsPortraitFeeler;
  v11 = [(MapsSuggestionsBaseFeeler *)&v23 initWithDelegate:v8 name:v10];
  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    sub_100003654(&v21, @"MapsSuggestionsPortraitFeelerQueue", v12);
    v13 = v21;
    v21 = 0;
    innerQueue = v11->_queue._innerQueue;
    v11->_queue._innerQueue = v13;

    v15 = v22;
    v22 = 0;
    name = v11->_queue._name;
    v11->_queue._name = v15;

    objc_storeStrong(&v11->_portrait, a4);
    GEOConfigGetDouble();
    v11->_pollingFrequency = v17;
    v18 = [[MapsSuggestionsMutableSignalPack alloc] initWithCapacity:2];
    signalPack = v11->_signalPack;
    v11->_signalPack = v18;
  }

  return v11;
}

- (MapsSuggestionsPortraitFeeler)initWithDelegate:(id)a3 portrait:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() description];
  v9 = [(MapsSuggestionsPortraitFeeler *)self initWithDelegate:v6 portrait:v7 name:v8];

  return v9;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end