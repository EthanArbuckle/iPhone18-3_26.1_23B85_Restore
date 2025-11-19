@interface ICPlatterWaveformSlice
- (ICPlatterWaveformSlice)init;
- (void)setupView;
@end

@implementation ICPlatterWaveformSlice

- (ICPlatterWaveformSlice)init
{
  v5.receiver = self;
  v5.super_class = ICPlatterWaveformSlice;
  v2 = [(ICPlatterWaveformSlice *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ICPlatterWaveformSlice *)v2 setupView];
  }

  return v3;
}

- (void)setupView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v9 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(ICPlatterWaveformSlice *)self setView:v9];
  v4 = +[ICRecorderStyleProvider sharedStyleProvider];
  [v4 platterWaveformSliceWidth];
  v6 = v5;
  [v9 setFrame:{0.0, 0.0, v6, v6}];
  v7 = [v9 layer];
  [v7 setCornerRadius:v6 * 0.5];

  v8 = [v9 layer];
  [v8 setAllowsEdgeAntialiasing:1];
}

@end