@interface CDUserContextQueries
@end

@implementation CDUserContextQueries

uint64_t __53___CDUserContextQueries_keyPathForUserIsAsleepStatus__block_invoke()
{
  keyPathForUserIsAsleepStatus_userIsAsleepStatus = [_CDContextualKeyPath keyPathWithKey:@"/isAsleep" isUserCentric:1];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __53___CDUserContextQueries_keyPathForUserIsAtHomeStatus__block_invoke()
{
  keyPathForUserIsAtHomeStatus_userIsAtHomeStatus = [_CDContextualKeyPath keyPathWithKey:@"/atHome" isUserCentric:1];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __53___CDUserContextQueries_keyPathForUserIsAtWorkStatus__block_invoke()
{
  keyPathForUserIsAtWorkStatus_userIsAtHomeStatus = [_CDContextualKeyPath keyPathWithKey:@"/atWork" isUserCentric:1];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __54___CDUserContextQueries_keyPathForUserIsDrivingStatus__block_invoke()
{
  keyPathForUserIsDrivingStatus_userIsAtHomeStatus = [_CDContextualKeyPath keyPathWithKey:@"/isDriving" isUserCentric:1];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __56___CDUserContextQueries_keyPathForUserIsTravelingStatus__block_invoke()
{
  keyPathForUserIsTravelingStatus_userIsAtHomeStatus = [_CDContextualKeyPath keyPathWithKey:@"/isTraveling" isUserCentric:1];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __58___CDUserContextQueries_keyPathForUserIsLeavingHomeStatus__block_invoke()
{
  keyPathForUserIsLeavingHomeStatus_userIsAtHomeStatus = [_CDContextualKeyPath keyPathWithKey:@"/isLeavingHome" isUserCentric:1];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __61___CDUserContextQueries_keyPathForUserIsArrivingAtHomeStatus__block_invoke()
{
  keyPathForUserIsArrivingAtHomeStatus_userIsAtHomeStatus = [_CDContextualKeyPath keyPathWithKey:@"/isArrivingHome" isUserCentric:1];

  return MEMORY[0x1EEE66BB8]();
}

@end