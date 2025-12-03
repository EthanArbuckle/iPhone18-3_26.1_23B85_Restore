@interface HUSymbolIconPickerViewController
+ (NSArray)sceneIconDescriptors;
+ (id)tintColors;
+ (int64_t)indexOfIconDescriptor:(id)descriptor inArray:(id)array;
- (HUSymbolIconPickerDelegate)delegate;
- (HUSymbolIconPickerViewController)initWithIconDescriptors:(id)descriptors selectedIconDescriptor:(id)descriptor selectedTintColor:(id)color delegate:(id)delegate;
- (id)_buildColorTintSectionWithEnvironment:(id)environment;
- (id)_buildHeaderSectionWithEnvironment:(id)environment;
- (id)_buildIconPickerSectionWithEnvironment:(id)environment;
- (id)_layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_cancel:(id)_cancel;
- (void)_done:(id)_done;
- (void)applyTintColor;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
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

- (HUSymbolIconPickerViewController)initWithIconDescriptors:(id)descriptors selectedIconDescriptor:(id)descriptor selectedTintColor:(id)color delegate:(id)delegate
{
  descriptorsCopy = descriptors;
  descriptorCopy = descriptor;
  colorCopy = color;
  delegateCopy = delegate;
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
    if ([objc_opt_class() indexOfIconDescriptor:descriptorCopy inArray:descriptorsCopy] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = objc_alloc(MEMORY[0x277D14728]);
      v19 = [v18 initWithSystemImageNamed:*MEMORY[0x277D141E0]];

      descriptorCopy = v19;
    }

    objc_storeStrong(&v17->_iconDescriptors, descriptors);
    objc_storeStrong(&v17->_selectedIconDescriptor, descriptorCopy);
    systemOrangeColor = colorCopy;
    if (!colorCopy)
    {
      systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    }

    objc_storeStrong(&v17->_selectedTintColor, systemOrangeColor);
    if (!colorCopy)
    {
    }

    objc_storeWeak(&v17->_delegate, delegateCopy);
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
  collectionView = [(HUSymbolIconPickerViewController *)self collectionView];
  [collectionView setAllowsMultipleSelection:1];

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  collectionView2 = [(HUSymbolIconPickerViewController *)self collectionView];
  [collectionView2 setBackgroundColor:systemBackgroundColor];

  collectionView3 = [(HUSymbolIconPickerViewController *)self collectionView];
  [collectionView3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"header"];

  collectionView4 = [(HUSymbolIconPickerViewController *)self collectionView];
  [collectionView4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"colorTint"];

  collectionView5 = [(HUSymbolIconPickerViewController *)self collectionView];
  [collectionView5 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x277D767D0] withReuseIdentifier:@"colorTintSeparator"];

  collectionView6 = [(HUSymbolIconPickerViewController *)self collectionView];
  [collectionView6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"icon"];

  v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancel_];
  navigationItem = [(HUSymbolIconPickerViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v10];

  navigationItem2 = [(HUSymbolIconPickerViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem2 leftBarButtonItem];
  [leftBarButtonItem setAccessibilityIdentifier:@"Home.Scene.ChooseIcon.Cancel"];

  v14 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
  navigationItem3 = [(HUSymbolIconPickerViewController *)self navigationItem];
  [navigationItem3 setRightBarButtonItem:v14];

  selectedIconDescriptor = [(HUSymbolIconPickerViewController *)self selectedIconDescriptor];
  navigationItem4 = [(HUSymbolIconPickerViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem4 rightBarButtonItem];
  [rightBarButtonItem setEnabled:selectedIconDescriptor != 0];

  navigationItem5 = [(HUSymbolIconPickerViewController *)self navigationItem];
  rightBarButtonItem2 = [navigationItem5 rightBarButtonItem];
  [rightBarButtonItem2 setAccessibilityIdentifier:@"Home.Scene.ChooseIcon.Done"];
}

- (void)viewDidLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = HUSymbolIconPickerViewController;
  [(HUSymbolIconPickerViewController *)&v19 viewDidLayoutSubviews];
  selectedIconDescriptor = [(HUSymbolIconPickerViewController *)self selectedIconDescriptor];
  if (selectedIconDescriptor)
  {
    v4 = selectedIconDescriptor;
    collectionView = [(HUSymbolIconPickerViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    v7 = [indexPathsForSelectedItems count];

    if (!v7)
    {
      v8 = objc_opt_class();
      selectedIconDescriptor2 = [(HUSymbolIconPickerViewController *)self selectedIconDescriptor];
      iconDescriptors = [(HUSymbolIconPickerViewController *)self iconDescriptors];
      v11 = [v8 indexOfIconDescriptor:selectedIconDescriptor2 inArray:iconDescriptors];

      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        collectionView2 = [(HUSymbolIconPickerViewController *)self collectionView];
        v13 = [MEMORY[0x277CCAA70] indexPathForItem:v11 inSection:2];
        [collectionView2 selectItemAtIndexPath:v13 animated:0 scrollPosition:0];
      }

      tintColors = [objc_opt_class() tintColors];
      selectedTintColor = [(HUSymbolIconPickerViewController *)self selectedTintColor];
      v16 = [tintColors indexOfObject:selectedTintColor];

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        collectionView3 = [(HUSymbolIconPickerViewController *)self collectionView];
        v18 = [MEMORY[0x277CCAA70] indexPathForItem:v16 inSection:1];
        [collectionView3 selectItemAtIndexPath:v18 animated:0 scrollPosition:0];
      }
    }
  }
}

- (void)applyTintColor
{
  selectedTintColor = [(HUSymbolIconPickerViewController *)self selectedTintColor];

  if (selectedTintColor)
  {
    v4 = MEMORY[0x277D755D0];
    selectedTintColor2 = [(HUSymbolIconPickerViewController *)self selectedTintColor];
    v8 = [v4 configurationWithHierarchicalColor:selectedTintColor2];

    selectedIconDescriptor = [(HUSymbolIconPickerViewController *)self selectedIconDescriptor];
    v7 = [selectedIconDescriptor imageIconDescriptorWithUpdatedImageSymbolConfiguration:v8];
    [(HUSymbolIconPickerViewController *)self setSelectedIconDescriptor:v7];
  }
}

+ (int64_t)indexOfIconDescriptor:(id)descriptor inArray:(id)array
{
  descriptorCopy = descriptor;
  v6 = [array valueForKey:@"imageIdentifier"];
  imageIdentifier = [descriptorCopy imageIdentifier];

  v8 = [v6 indexOfObject:imageIdentifier];
  return v8;
}

- (void)_cancel:(id)_cancel
{
  delegate = [(HUSymbolIconPickerViewController *)self delegate];
  [delegate iconPickerDidCancel:self];
}

- (void)_done:(id)_done
{
  delegate = [(HUSymbolIconPickerViewController *)self delegate];
  selectedIconDescriptor = [(HUSymbolIconPickerViewController *)self selectedIconDescriptor];
  selectedTintColor = [(HUSymbolIconPickerViewController *)self selectedTintColor];
  [delegate iconPicker:self didPickIcon:selectedIconDescriptor withTintColor:selectedTintColor];
}

- (id)_layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment
{
  environmentCopy = environment;
  switch(section)
  {
    case 2:
      v7 = [(HUSymbolIconPickerViewController *)self _buildIconPickerSectionWithEnvironment:environmentCopy];
      goto LABEL_7;
    case 1:
      v7 = [(HUSymbolIconPickerViewController *)self _buildColorTintSectionWithEnvironment:environmentCopy];
      goto LABEL_7;
    case 0:
      v7 = [(HUSymbolIconPickerViewController *)self _buildHeaderSectionWithEnvironment:environmentCopy];
LABEL_7:
      v8 = v7;
      goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)_buildHeaderSectionWithEnvironment:(id)environment
{
  v3 = MEMORY[0x277CFB860];
  v4 = MEMORY[0x277CFB870];
  v5 = [MEMORY[0x277CFB840] fractionalWidthDimension:{environment, 1.0}];
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

- (id)_buildColorTintSectionWithEnvironment:(id)environment
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CFB870];
  v4 = [MEMORY[0x277CFB840] absoluteDimension:{environment, 52.0}];
  v5 = [MEMORY[0x277CFB840] absoluteDimension:52.0];
  v6 = [v3 sizeWithWidthDimension:v4 heightDimension:v5];

  v7 = MEMORY[0x277CFB870];
  v8 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  heightDimension = [v6 heightDimension];
  v10 = [v7 sizeWithWidthDimension:v8 heightDimension:heightDimension];

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

- (id)_buildIconPickerSectionWithEnvironment:(id)environment
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CFB870];
  v4 = [MEMORY[0x277CFB840] absoluteDimension:{environment, 45.0}];
  v5 = [MEMORY[0x277CFB840] absoluteDimension:45.0];
  v6 = [v3 sizeWithWidthDimension:v4 heightDimension:v5];

  v7 = MEMORY[0x277CFB870];
  v8 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  heightDimension = [v6 heightDimension];
  v10 = [v7 sizeWithWidthDimension:v8 heightDimension:heightDimension];

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

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    if (section == 2)
    {
      iconDescriptors = [(HUSymbolIconPickerViewController *)self iconDescriptors];
    }

    else
    {
      if (section != 1)
      {
        v9 = -1;
        goto LABEL_9;
      }

      iconDescriptors = [objc_opt_class() tintColors];
    }

    v8 = iconDescriptors;
    v9 = [iconDescriptors count];
  }

  else
  {
    v9 = 1;
  }

LABEL_9:

  return v9;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == 2)
  {
    v16 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"icon" forIndexPath:pathCopy];
    iconDescriptors = [(HUSymbolIconPickerViewController *)self iconDescriptors];
    v18 = [iconDescriptors objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
    selectedTintColor = [(HUSymbolIconPickerViewController *)self selectedTintColor];
    [v16 setIconDescriptor:v18 andSelectedTintColor:selectedTintColor];

    v9 = v16;
    iconDescriptors2 = [(HUSymbolIconPickerViewController *)self iconDescriptors];
    accessibilityName = [iconDescriptors2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
    imageIdentifier = [accessibilityName imageIdentifier];
    [v9 setAccessibilityIdentifier:imageIdentifier];

    goto LABEL_7;
  }

  if (section == 1)
  {
    v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"colorTint" forIndexPath:pathCopy];
    tintColors = [objc_opt_class() tintColors];
    v13 = [tintColors objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
    [v11 setColor:v13];

    v9 = v11;
    iconDescriptors2 = [v9 color];
    accessibilityName = [iconDescriptors2 accessibilityName];
    [v9 setAccessibilityIdentifier:accessibilityName];

LABEL_7:
    goto LABEL_9;
  }

  if (section)
  {
    v9 = 0;
  }

  else
  {
    v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"header" forIndexPath:pathCopy];
    selectedIconDescriptor = [(HUSymbolIconPickerViewController *)self selectedIconDescriptor];
    [v9 setIconDescriptor:selectedIconDescriptor];

    [v9 setUserInteractionEnabled:0];
  }

LABEL_9:

  return v9;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if (([kindCopy isEqualToString:*MEMORY[0x277D767D0]] & 1) == 0)
  {
    NSLog(&cfstr_AskedForAViewF.isa, kindCopy);
  }

  v10 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:@"colorTintSeparator" forIndexPath:pathCopy];
  separatorColor = [MEMORY[0x277D75348] separatorColor];
  [v10 setBackgroundColor:separatorColor];

  return v10;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v34 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [indexPathsForSelectedItems countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        if ([pathCopy compare:v13])
        {
          section = [v13 section];
          if (section == [pathCopy section])
          {
            [viewCopy deselectItemAtIndexPath:v13 animated:1];
          }
        }
      }

      v10 = [indexPathsForSelectedItems countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  section2 = [pathCopy section];
  if (section2 == 2)
  {
    iconDescriptors = [(HUSymbolIconPickerViewController *)self iconDescriptors];
    indexPathsForVisibleItems = [iconDescriptors objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

    v20 = objc_alloc(MEMORY[0x277D14728]);
    identifier = [indexPathsForVisibleItems identifier];
    imageSymbolConfiguration = [indexPathsForVisibleItems imageSymbolConfiguration];
    v23 = [v20 initWithSystemImageNamed:identifier configuration:imageSymbolConfiguration];
    [(HUSymbolIconPickerViewController *)self setSelectedIconDescriptor:v23];

    [(HUSymbolIconPickerViewController *)self applyTintColor];
    navigationItem = [(HUSymbolIconPickerViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:1];

    goto LABEL_15;
  }

  if (section2 == 1)
  {
    tintColors = [objc_opt_class() tintColors];
    v17 = [tintColors objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
    [(HUSymbolIconPickerViewController *)self setSelectedTintColor:v17];

    [(HUSymbolIconPickerViewController *)self applyTintColor];
    indexPathsForVisibleItems = [viewCopy indexPathsForVisibleItems];
    [viewCopy reconfigureItemsAtIndexPaths:indexPathsForVisibleItems];
LABEL_15:
  }

  v26 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
  v32 = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  [viewCopy reloadItemsAtIndexPaths:v27];
}

- (HUSymbolIconPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end