@interface HUSymbolIconPickerViewController
+ (NSArray)sceneIconDescriptors;
+ (id)tintColors;
+ (int64_t)indexOfIconDescriptor:(id)a3 inArray:(id)a4;
- (HUSymbolIconPickerDelegate)delegate;
- (HUSymbolIconPickerViewController)initWithIconDescriptors:(id)a3 selectedIconDescriptor:(id)a4 selectedTintColor:(id)a5 delegate:(id)a6;
- (id)_buildColorTintSectionWithEnvironment:(id)a3;
- (id)_buildHeaderSectionWithEnvironment:(id)a3;
- (id)_buildIconPickerSectionWithEnvironment:(id)a3;
- (id)_layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_cancel:(id)a3;
- (void)_done:(id)a3;
- (void)applyTintColor;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HUSymbolIconPickerViewController

+ (NSArray)sceneIconDescriptors
{
  if (qword_27C837E90 != -1)
  {
    dispatch_once(&qword_27C837E90, &__block_literal_global_96);
  }

  v3 = _MergedGlobals_3_3;

  return v3;
}

void __56__HUSymbolIconPickerViewController_sceneIconDescriptors__block_invoke()
{
  v4[130] = *MEMORY[0x277D85DE8];
  v4[0] = @"bed.double.fill";
  v4[1] = @"sofa.fill";
  v0 = *MEMORY[0x277D141E0];
  v4[2] = @"chair.lounge.fill";
  v4[3] = v0;
  v4[4] = @"building.2.fill";
  v4[5] = @"oven.fill";
  v4[6] = @"fork.knife";
  v4[7] = @"cup.and.saucer.fill";
  v4[8] = @"frying.pan.fill";
  v4[9] = @"sink.fill";
  v4[10] = @"bathtub.fill";
  v4[11] = @"book.closed.fill";
  v4[12] = @"book.fill";
  v4[13] = @"paintpalette.fill";
  v4[14] = @"paintbrush.fill";
  v4[15] = @"paintbrush.pointed.fill";
  v4[16] = @"ruler.fill";
  v4[17] = @"gamecontroller.fill";
  v4[18] = @"die.face.5.fill";
  v4[19] = @"theatermasks.fill";
  v4[20] = @"puzzlepiece.fill";
  v4[21] = @"metronome.fill";
  v4[22] = @"pianokeys";
  v4[23] = @"tuningfork";
  v4[24] = @"binoculars.fill";
  v4[25] = @"film.fill";
  v4[26] = @"birthday.cake.fill";
  v4[27] = @"popcorn.fill";
  v4[28] = @"wineglass.fill";
  v4[29] = @"ticket.fill";
  v4[30] = @"guitars.fill";
  v4[31] = @"fireplace.fill";
  v4[32] = @"moon.stars.fill";
  v4[33] = @"sun.and.horizon.fill";
  v4[34] = @"sunrise.fill";
  v4[35] = @"sunset.fill";
  v4[36] = @"sun.max.fill";
  v4[37] = @"cloud.rain.fill";
  v4[38] = @"drop.fill";
  v4[39] = @"wind";
  v4[40] = @"flame.fill";
  v4[41] = @"snowflake";
  v4[42] = @"thermometer.medium";
  v4[43] = @"umbrella.fill";
  v4[44] = @"leaf.fill";
  v4[45] = @"cloud.fill";
  v4[46] = @"figure.run";
  v4[47] = @"figure.socialdance";
  v4[48] = @"figure.mind.and.body";
  v4[49] = @"figure.core.training";
  v4[50] = @"figure.walk";
  v4[51] = @"figure.roll.runningpace";
  v4[52] = @"figure.indoor.cycle";
  v4[53] = @"figure.elliptical";
  v4[54] = @"figure.jumprope";
  v4[55] = @"figure.highintensity.intervaltraining";
  v4[56] = @"figure.walk.arrival";
  v4[57] = @"figure.walk.departure";
  v4[58] = @"person.2.fill";
  v4[59] = @"baseball.fill";
  v4[60] = @"basketball.fill";
  v4[61] = @"dumbbell.fill";
  v4[62] = @"football.fill";
  v4[63] = @"soccerball";
  v4[64] = @"tennisball.fill";
  v4[65] = @"volleyball.fill";
  v4[66] = @"speaker.wave.2.fill";
  v4[67] = @"phone.fill";
  v4[68] = @"video.fill";
  v4[69] = @"alarm.fill";
  v4[70] = @"calendar";
  v4[71] = @"clock.fill";
  v4[72] = @"envelope.fill";
  v4[73] = @"hifispeaker.2.fill";
  v4[74] = @"radio.fill";
  v4[75] = @"person.crop.rectangle.fill";
  v4[76] = @"person.lanyardcard.fill";
  v4[77] = @"tv.and.hifispeaker.fill";
  v4[78] = @"display";
  v4[79] = @"play.tv.fill";
  v4[80] = @"cart.fill";
  v4[81] = @"briefcase.fill";
  v4[82] = @"suitcase.fill";
  v4[83] = @"suitcase.cart.fill";
  v4[84] = @"keyboard.fill";
  v4[85] = @"lock.shield.fill";
  v4[86] = @"lightbulb.fill";
  v4[87] = @"lightbulb.slash.fill";
  v4[88] = @"scissors";
  v4[89] = @"airplane";
  v4[90] = @"car.fill";
  v4[91] = @"heart.fill";
  v4[92] = @"dial.medium.fill";
  v4[93] = @"fanblades.fill";
  v4[94] = @"wrench.and.screwdriver.fill";
  v4[95] = @"lock.fill";
  v4[96] = @"trophy.fill";
  v4[97] = @"studentdesk";
  v4[98] = @"tshirt.fill";
  v4[99] = @"balloon.2.fill";
  v4[100] = @"flag.fill";
  v4[101] = @"sparkles";
  v4[102] = @"party.popper.fill";
  v4[103] = @"music.mic";
  v4[104] = @"wand.and.stars";
  v4[105] = @"emoji.face.smiling.with.sunglasses";
  v4[106] = @"emoji.face.smiling.with.hearts";
  v4[107] = @"emoji.face.smiling.with.heart.eyes";
  v4[108] = @"memoji";
  v4[109] = @"emoji.ghost";
  v4[110] = @"emoji.skull";
  v4[111] = @"emoji.alien";
  v4[112] = @"emoji.unicorn";
  v4[113] = @"emoji.horse.face";
  v4[114] = @"emoji.snake";
  v4[115] = @"emoji.mouse.face";
  v4[116] = @"emoji.pig.face";
  v4[117] = @"emoji.monkey.face";
  v4[118] = @"emoji.cow.face";
  v4[119] = @"emoji.tiger.face";
  v4[120] = @"emoji.ram.face";
  v4[121] = @"emoji.rabbit.face";
  v4[122] = @"emoji.dragon.face";
  v4[123] = @"emoji.robot.face";
  v4[124] = @"emoji.alien.monster";
  v4[125] = @"emoji.pile.of.poop";
  v4[126] = @"emoji.dog.face";
  v4[127] = @"emoji.bear.face";
  v4[128] = @"emoji.cat.face";
  v4[129] = @"emoji.chicken.face";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:130];
  v2 = [v1 na_map:&__block_literal_global_465];
  v3 = _MergedGlobals_3_3;
  _MergedGlobals_3_3 = v2;
}

id __56__HUSymbolIconPickerViewController_sceneIconDescriptors__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14728];
  v3 = a2;
  v4 = [[v2 alloc] initWithSystemImageNamed:v3];

  return v4;
}

+ (id)tintColors
{
  if (qword_27C837EA0 != -1)
  {
    dispatch_once(&qword_27C837EA0, &__block_literal_global_467);
  }

  v3 = qword_27C837E98;

  return v3;
}

void __46__HUSymbolIconPickerViewController_tintColors__block_invoke()
{
  v14[12] = *MEMORY[0x277D85DE8];
  v13 = [MEMORY[0x277D75348] systemRedColor];
  v14[0] = v13;
  v12 = [MEMORY[0x277D75348] systemOrangeColor];
  v14[1] = v12;
  v0 = [MEMORY[0x277D75348] systemYellowColor];
  v14[2] = v0;
  v1 = [MEMORY[0x277D75348] systemGreenColor];
  v14[3] = v1;
  v2 = [MEMORY[0x277D75348] systemMintColor];
  v14[4] = v2;
  v3 = [MEMORY[0x277D75348] systemCyanColor];
  v14[5] = v3;
  v4 = [MEMORY[0x277D75348] systemTealColor];
  v14[6] = v4;
  v5 = [MEMORY[0x277D75348] systemBlueColor];
  v14[7] = v5;
  v6 = [MEMORY[0x277D75348] systemIndigoColor];
  v14[8] = v6;
  v7 = [MEMORY[0x277D75348] systemPurpleColor];
  v14[9] = v7;
  v8 = [MEMORY[0x277D75348] systemPinkColor];
  v14[10] = v8;
  v9 = [MEMORY[0x277D75348] systemBrownColor];
  v14[11] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:12];
  v11 = qword_27C837E98;
  qword_27C837E98 = v10;
}

- (HUSymbolIconPickerViewController)initWithIconDescriptors:(id)a3 selectedIconDescriptor:(id)a4 selectedTintColor:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  objc_initWeak(&location, self);
  v15 = objc_alloc(MEMORY[0x277D752B8]);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __110__HUSymbolIconPickerViewController_initWithIconDescriptors_selectedIconDescriptor_selectedTintColor_delegate___block_invoke;
  v24[3] = &unk_277DBC7A0;
  objc_copyWeak(&v25, &location);
  v16 = [v15 initWithSectionProvider:v24];
  v23.receiver = self;
  v23.super_class = HUSymbolIconPickerViewController;
  v17 = [(HUSymbolIconPickerViewController *)&v23 initWithCollectionViewLayout:v16];
  if (v17)
  {
    if ([objc_opt_class() indexOfIconDescriptor:v12 inArray:v11] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = objc_alloc(MEMORY[0x277D14728]);
      v19 = [v18 initWithSystemImageNamed:*MEMORY[0x277D141E0]];

      v12 = v19;
    }

    objc_storeStrong(&v17->_iconDescriptors, a3);
    objc_storeStrong(&v17->_selectedIconDescriptor, v12);
    v20 = v13;
    if (!v13)
    {
      v20 = [MEMORY[0x277D75348] systemOrangeColor];
    }

    objc_storeStrong(&v17->_selectedTintColor, v20);
    if (!v13)
    {
    }

    objc_storeWeak(&v17->_delegate, v14);
    v21 = _HULocalizedStringWithDefaultValue(@"HUIconPickerTitle", @"HUIconPickerTitle", 1);
    [(HUSymbolIconPickerViewController *)v17 setTitle:v21];

    [(HUSymbolIconPickerViewController *)v17 applyTintColor];
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v17;
}

id __110__HUSymbolIconPickerViewController_initWithIconDescriptors_selectedIconDescriptor_selectedTintColor_delegate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained _layoutSectionForSection:a2 layoutEnvironment:v5];

  return v7;
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = HUSymbolIconPickerViewController;
  [(HUSymbolIconPickerViewController *)&v21 viewDidLoad];
  v3 = [(HUSymbolIconPickerViewController *)self collectionView];
  [v3 setAllowsMultipleSelection:1];

  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  v5 = [(HUSymbolIconPickerViewController *)self collectionView];
  [v5 setBackgroundColor:v4];

  v6 = [(HUSymbolIconPickerViewController *)self collectionView];
  [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"header"];

  v7 = [(HUSymbolIconPickerViewController *)self collectionView];
  [v7 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"colorTint"];

  v8 = [(HUSymbolIconPickerViewController *)self collectionView];
  [v8 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x277D767D0] withReuseIdentifier:@"colorTintSeparator"];

  v9 = [(HUSymbolIconPickerViewController *)self collectionView];
  [v9 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"icon"];

  v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancel_];
  v11 = [(HUSymbolIconPickerViewController *)self navigationItem];
  [v11 setLeftBarButtonItem:v10];

  v12 = [(HUSymbolIconPickerViewController *)self navigationItem];
  v13 = [v12 leftBarButtonItem];
  [v13 setAccessibilityIdentifier:@"Home.Scene.ChooseIcon.Cancel"];

  v14 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
  v15 = [(HUSymbolIconPickerViewController *)self navigationItem];
  [v15 setRightBarButtonItem:v14];

  v16 = [(HUSymbolIconPickerViewController *)self selectedIconDescriptor];
  v17 = [(HUSymbolIconPickerViewController *)self navigationItem];
  v18 = [v17 rightBarButtonItem];
  [v18 setEnabled:v16 != 0];

  v19 = [(HUSymbolIconPickerViewController *)self navigationItem];
  v20 = [v19 rightBarButtonItem];
  [v20 setAccessibilityIdentifier:@"Home.Scene.ChooseIcon.Done"];
}

- (void)viewDidLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = HUSymbolIconPickerViewController;
  [(HUSymbolIconPickerViewController *)&v19 viewDidLayoutSubviews];
  v3 = [(HUSymbolIconPickerViewController *)self selectedIconDescriptor];
  if (v3)
  {
    v4 = v3;
    v5 = [(HUSymbolIconPickerViewController *)self collectionView];
    v6 = [v5 indexPathsForSelectedItems];
    v7 = [v6 count];

    if (!v7)
    {
      v8 = objc_opt_class();
      v9 = [(HUSymbolIconPickerViewController *)self selectedIconDescriptor];
      v10 = [(HUSymbolIconPickerViewController *)self iconDescriptors];
      v11 = [v8 indexOfIconDescriptor:v9 inArray:v10];

      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = [(HUSymbolIconPickerViewController *)self collectionView];
        v13 = [MEMORY[0x277CCAA70] indexPathForItem:v11 inSection:2];
        [v12 selectItemAtIndexPath:v13 animated:0 scrollPosition:0];
      }

      v14 = [objc_opt_class() tintColors];
      v15 = [(HUSymbolIconPickerViewController *)self selectedTintColor];
      v16 = [v14 indexOfObject:v15];

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [(HUSymbolIconPickerViewController *)self collectionView];
        v18 = [MEMORY[0x277CCAA70] indexPathForItem:v16 inSection:1];
        [v17 selectItemAtIndexPath:v18 animated:0 scrollPosition:0];
      }
    }
  }
}

- (void)applyTintColor
{
  v3 = [(HUSymbolIconPickerViewController *)self selectedTintColor];

  if (v3)
  {
    v4 = MEMORY[0x277D755D0];
    v5 = [(HUSymbolIconPickerViewController *)self selectedTintColor];
    v8 = [v4 configurationWithHierarchicalColor:v5];

    v6 = [(HUSymbolIconPickerViewController *)self selectedIconDescriptor];
    v7 = [v6 imageIconDescriptorWithUpdatedImageSymbolConfiguration:v8];
    [(HUSymbolIconPickerViewController *)self setSelectedIconDescriptor:v7];
  }
}

+ (int64_t)indexOfIconDescriptor:(id)a3 inArray:(id)a4
{
  v5 = a3;
  v6 = [a4 valueForKey:@"imageIdentifier"];
  v7 = [v5 imageIdentifier];

  v8 = [v6 indexOfObject:v7];
  return v8;
}

- (void)_cancel:(id)a3
{
  v4 = [(HUSymbolIconPickerViewController *)self delegate];
  [v4 iconPickerDidCancel:self];
}

- (void)_done:(id)a3
{
  v6 = [(HUSymbolIconPickerViewController *)self delegate];
  v4 = [(HUSymbolIconPickerViewController *)self selectedIconDescriptor];
  v5 = [(HUSymbolIconPickerViewController *)self selectedTintColor];
  [v6 iconPicker:self didPickIcon:v4 withTintColor:v5];
}

- (id)_layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4
{
  v6 = a4;
  switch(a3)
  {
    case 2:
      v7 = [(HUSymbolIconPickerViewController *)self _buildIconPickerSectionWithEnvironment:v6];
      goto LABEL_7;
    case 1:
      v7 = [(HUSymbolIconPickerViewController *)self _buildColorTintSectionWithEnvironment:v6];
      goto LABEL_7;
    case 0:
      v7 = [(HUSymbolIconPickerViewController *)self _buildHeaderSectionWithEnvironment:v6];
LABEL_7:
      v8 = v7;
      goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)_buildHeaderSectionWithEnvironment:(id)a3
{
  v3 = MEMORY[0x277CFB860];
  v4 = MEMORY[0x277CFB870];
  v5 = [MEMORY[0x277CFB840] fractionalWidthDimension:{a3, 1.0}];
  v6 = [MEMORY[0x277CFB840] fractionalHeightDimension:1.0];
  v7 = [v4 sizeWithWidthDimension:v5 heightDimension:v6];
  v8 = [v3 itemWithLayoutSize:v7];

  [v8 setContentInsets:{15.0, 15.0, 15.0, 15.0}];
  v9 = MEMORY[0x277CFB870];
  v10 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v11 = [MEMORY[0x277CFB840] absoluteDimension:120.0];
  v12 = [v9 sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = [MEMORY[0x277CFB850] horizontalGroupWithLayoutSize:v12 subitem:v8 count:1];
  v14 = [MEMORY[0x277CFB868] sectionWithGroup:v13];
  [v14 setContentInsets:{15.0, 30.0, 10.0, 30.0}];

  return v14;
}

- (id)_buildColorTintSectionWithEnvironment:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CFB870];
  v4 = [MEMORY[0x277CFB840] absoluteDimension:{a3, 52.0}];
  v5 = [MEMORY[0x277CFB840] absoluteDimension:52.0];
  v6 = [v3 sizeWithWidthDimension:v4 heightDimension:v5];

  v7 = MEMORY[0x277CFB870];
  v8 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v9 = [v6 heightDimension];
  v10 = [v7 sizeWithWidthDimension:v8 heightDimension:v9];

  v11 = [MEMORY[0x277CFB860] itemWithLayoutSize:v6];
  [v11 setContentInsets:{5.0, 5.0, 5.0, 5.0}];
  v12 = MEMORY[0x277CFB850];
  v25[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v14 = [v12 horizontalGroupWithLayoutSize:v10 subitems:v13];

  v15 = [MEMORY[0x277CFB878] flexibleSpacing:0.0];
  [v14 setInterItemSpacing:v15];

  v16 = [MEMORY[0x277CFB868] sectionWithGroup:v14];
  [v16 setInterGroupSpacing:5.0];
  [v16 setContentInsets:{10.0, 30.0, 30.0, 30.0}];
  v17 = MEMORY[0x277CFB870];
  v18 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v19 = [MEMORY[0x277CFB840] absoluteDimension:0.5];
  v20 = [v17 sizeWithWidthDimension:v18 heightDimension:v19];

  v21 = [MEMORY[0x277CFB830] boundarySupplementaryItemWithLayoutSize:v20 elementKind:*MEMORY[0x277D767D0] alignment:5];
  v24 = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  [v16 setBoundarySupplementaryItems:v22];

  [v16 setSupplementariesFollowContentInsets:0];

  return v16;
}

- (id)_buildIconPickerSectionWithEnvironment:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CFB870];
  v4 = [MEMORY[0x277CFB840] absoluteDimension:{a3, 45.0}];
  v5 = [MEMORY[0x277CFB840] absoluteDimension:45.0];
  v6 = [v3 sizeWithWidthDimension:v4 heightDimension:v5];

  v7 = MEMORY[0x277CFB870];
  v8 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v9 = [v6 heightDimension];
  v10 = [v7 sizeWithWidthDimension:v8 heightDimension:v9];

  v11 = [MEMORY[0x277CFB860] itemWithLayoutSize:v6];
  v12 = MEMORY[0x277CFB850];
  v18[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v14 = [v12 horizontalGroupWithLayoutSize:v10 subitems:v13];

  v15 = [MEMORY[0x277CFB878] flexibleSpacing:10.0];
  [v14 setInterItemSpacing:v15];

  v16 = [MEMORY[0x277CFB868] sectionWithGroup:v14];
  [v16 setInterGroupSpacing:20.0];
  [v16 setContentInsets:{25.0, 30.0, 15.0, 30.0}];

  return v16;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    if (a4 == 2)
    {
      v7 = [(HUSymbolIconPickerViewController *)self iconDescriptors];
    }

    else
    {
      if (a4 != 1)
      {
        v9 = -1;
        goto LABEL_9;
      }

      v7 = [objc_opt_class() tintColors];
    }

    v8 = v7;
    v9 = [v7 count];
  }

  else
  {
    v9 = 1;
  }

LABEL_9:

  return v9;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == 2)
  {
    v16 = [v6 dequeueReusableCellWithReuseIdentifier:@"icon" forIndexPath:v7];
    v17 = [(HUSymbolIconPickerViewController *)self iconDescriptors];
    v18 = [v17 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];
    v19 = [(HUSymbolIconPickerViewController *)self selectedTintColor];
    [v16 setIconDescriptor:v18 andSelectedTintColor:v19];

    v9 = v16;
    v14 = [(HUSymbolIconPickerViewController *)self iconDescriptors];
    v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];
    v20 = [v15 imageIdentifier];
    [v9 setAccessibilityIdentifier:v20];

    goto LABEL_7;
  }

  if (v8 == 1)
  {
    v11 = [v6 dequeueReusableCellWithReuseIdentifier:@"colorTint" forIndexPath:v7];
    v12 = [objc_opt_class() tintColors];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];
    [v11 setColor:v13];

    v9 = v11;
    v14 = [v9 color];
    v15 = [v14 accessibilityName];
    [v9 setAccessibilityIdentifier:v15];

LABEL_7:
    goto LABEL_9;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v6 dequeueReusableCellWithReuseIdentifier:@"header" forIndexPath:v7];
    v10 = [(HUSymbolIconPickerViewController *)self selectedIconDescriptor];
    [v9 setIconDescriptor:v10];

    [v9 setUserInteractionEnabled:0];
  }

LABEL_9:

  return v9;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (([v8 isEqualToString:*MEMORY[0x277D767D0]] & 1) == 0)
  {
    NSLog(&cfstr_AskedForAViewF.isa, v8);
  }

  v10 = [v7 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:@"colorTintSeparator" forIndexPath:v9];
  v11 = [MEMORY[0x277D75348] separatorColor];
  [v10 setBackgroundColor:v11];

  return v10;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 indexPathsForSelectedItems];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        if ([v7 compare:v13])
        {
          v14 = [v13 section];
          if (v14 == [v7 section])
          {
            [v6 deselectItemAtIndexPath:v13 animated:1];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  v15 = [v7 section];
  if (v15 == 2)
  {
    v19 = [(HUSymbolIconPickerViewController *)self iconDescriptors];
    v18 = [v19 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];

    v20 = objc_alloc(MEMORY[0x277D14728]);
    v21 = [v18 identifier];
    v22 = [v18 imageSymbolConfiguration];
    v23 = [v20 initWithSystemImageNamed:v21 configuration:v22];
    [(HUSymbolIconPickerViewController *)self setSelectedIconDescriptor:v23];

    [(HUSymbolIconPickerViewController *)self applyTintColor];
    v24 = [(HUSymbolIconPickerViewController *)self navigationItem];
    v25 = [v24 rightBarButtonItem];
    [v25 setEnabled:1];

    goto LABEL_15;
  }

  if (v15 == 1)
  {
    v16 = [objc_opt_class() tintColors];
    v17 = [v16 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];
    [(HUSymbolIconPickerViewController *)self setSelectedTintColor:v17];

    [(HUSymbolIconPickerViewController *)self applyTintColor];
    v18 = [v6 indexPathsForVisibleItems];
    [v6 reconfigureItemsAtIndexPaths:v18];
LABEL_15:
  }

  v26 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
  v32 = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  [v6 reloadItemsAtIndexPaths:v27];
}

- (HUSymbolIconPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end