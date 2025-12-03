@interface BDSReadingGoalsStateInfo
- (BDSReadingGoalsStateInfo)initWithBooksFinishedGoal:(id)goal streakDayGoal:(id)dayGoal;
- (BDSReadingGoalsStateInfo)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSReadingGoalsStateInfo

- (BDSReadingGoalsStateInfo)initWithBooksFinishedGoal:(id)goal streakDayGoal:(id)dayGoal
{
  goalCopy = goal;
  dayGoalCopy = dayGoal;
  v12.receiver = self;
  v12.super_class = BDSReadingGoalsStateInfo;
  v9 = [(BDSReadingGoalsStateInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_booksFinishedGoal, goal);
    objc_storeStrong(&v10->_streakDayGoal, dayGoal);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  if (self != equal)
  {
    equalCopy = equal;
    objc_opt_class();
    v5 = BUDynamicCast();

    v6 = 0;
    if (!self || !v5)
    {
      goto LABEL_13;
    }

    booksFinishedGoal = [(BDSReadingGoalsStateInfo *)self booksFinishedGoal];
    booksFinishedGoal2 = [v5 booksFinishedGoal];
    v9 = booksFinishedGoal2;
    if (booksFinishedGoal == booksFinishedGoal2)
    {
    }

    else
    {
      booksFinishedGoal3 = [(BDSReadingGoalsStateInfo *)self booksFinishedGoal];
      booksFinishedGoal4 = [v5 booksFinishedGoal];
      v12 = [booksFinishedGoal3 isEqual:booksFinishedGoal4];

      if (!v12)
      {
        v6 = 0;
LABEL_13:

        return v6;
      }
    }

    streakDayGoal = [(BDSReadingGoalsStateInfo *)self streakDayGoal];
    streakDayGoal2 = [v5 streakDayGoal];
    if (streakDayGoal == streakDayGoal2)
    {
      v6 = 1;
    }

    else
    {
      streakDayGoal3 = [(BDSReadingGoalsStateInfo *)self streakDayGoal];
      streakDayGoal4 = [v5 streakDayGoal];
      v6 = [streakDayGoal3 isEqual:streakDayGoal4];
    }

    goto LABEL_13;
  }

  return 1;
}

- (BDSReadingGoalsStateInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BDSReadingGoalsStateInfo *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"booksFinishedGoal"];
    booksFinishedGoal = v5->_booksFinishedGoal;
    v5->_booksFinishedGoal = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"streakDayGoal"];
    streakDayGoal = v5->_streakDayGoal;
    v5->_streakDayGoal = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  booksFinishedGoal = [(BDSReadingGoalsStateInfo *)self booksFinishedGoal];
  [coderCopy encodeObject:booksFinishedGoal forKey:@"booksFinishedGoal"];

  streakDayGoal = [(BDSReadingGoalsStateInfo *)self streakDayGoal];
  [coderCopy encodeObject:streakDayGoal forKey:@"streakDayGoal"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(BDSReadingGoalsStateInfo);
  if (v4)
  {
    booksFinishedGoal = [(BDSReadingGoalsStateInfo *)self booksFinishedGoal];
    [(BDSReadingGoalsStateInfo *)v4 setBooksFinishedGoal:booksFinishedGoal];

    streakDayGoal = [(BDSReadingGoalsStateInfo *)self streakDayGoal];
    [(BDSReadingGoalsStateInfo *)v4 setStreakDayGoal:streakDayGoal];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  booksFinishedGoal = [(BDSReadingGoalsStateInfo *)self booksFinishedGoal];
  streakDayGoal = [(BDSReadingGoalsStateInfo *)self streakDayGoal];
  v7 = [v3 stringWithFormat:@"<%@: %p booksFinishedGoal:%@, streakDayGoal:%@>", v4, self, booksFinishedGoal, streakDayGoal];

  return v7;
}

@end