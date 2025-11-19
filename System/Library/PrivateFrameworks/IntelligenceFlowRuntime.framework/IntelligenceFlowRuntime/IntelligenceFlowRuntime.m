int main(int argc, const char **argv, const char **envp)
{
  sub_100000F0C();
  sub_100000EA4();
  sub_100000EFC();
  return 0;
}

unint64_t sub_100000EA4()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    sub_100000F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}